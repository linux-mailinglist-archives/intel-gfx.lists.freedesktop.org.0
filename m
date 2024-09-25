Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8322A9866E3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 21:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2A810E84E;
	Wed, 25 Sep 2024 19:29:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="PESESjdT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B598410E84E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 19:28:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 41ED85C5B80;
 Wed, 25 Sep 2024 19:28:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A25F9C4CEC3;
 Wed, 25 Sep 2024 19:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1727292538;
 bh=6tXn852O1kAmTwonYNRRDCp3A9L7/87s85NXEJ42ndA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=PESESjdTmXrZUJfVsi8TuO/IDa9vhIZYlD114Ru5rU0/68tvWKWC6qCXAxkPZufTz
 BW73GVKIrESxKAojgKvxjDSMN2bX2uKse+0ns0AvsufMiBO5Tl6SeZUp0dTUumxpez
 UxlErRMSLzQ+vX49r89xhNQZUrxT16JcpxlBAvXEpYFo9N4pqRQkSnnQsgKoYjtLqX
 JobuYyIFxuhjUMOiumsJyW8AqftgAjlkeat6ggIuvqsj1NgHLDO41hZDLm0Dt9pINM
 1bWW3AaZYMFpCKtAKLTYj4lPccmlmA5Kc506dGNFACpe35aUAKNpLkLDoJ6JqY8/NY
 qp5dxTX8v8WZw==
Date: Wed, 25 Sep 2024 14:28:56 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 6/6] drm/i915/pm: Use pci_dev->skip_bus_pm for hibernate
 vs. D3 workaround
Message-ID: <20240925192856.GA10650@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240925144526.2482-7-ville.syrjala@linux.intel.com>
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 25, 2024 at 05:45:26PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On some older laptops we have to leave the device in D0
> during hibernation, or else the BIOS just hangs and never
> finishes the hibernation.
> 
> Currently we are achieving that by skipping the
> pci_set_power_state(D3). However we also need to call
> pci_save_state() ahead of time, or else
> pci_pm_suspend_noirq() will do the pci_set_power_state(D3)
> anyway.
> 
> This is all rather ugly, and might cause us to deviate from
> standard pci pm behaviour in unknown ways since we always
> call pci_save_state() for any kind of suspend operation.
> 
> Stop calling pci_save_state()+pci_set_power_state() entirely
> (apart from the switcheroo paths) and instead set
> pci_dev->skip_bus_pm=true to prevent the D3 during hibernation
> on old machines. Apart from that we'll just let the normal
> pci pm code take care of everything for us.
> 
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: linux-pci@vger.kernel.org
> Cc: intel-gfx@lists.freedesktop.org
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index c3e7225ea1ba..05948d00a874 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1123,13 +1123,9 @@ static int i915_drm_suspend_noirq(struct drm_device *dev, bool hibernation)
>  	 * Lenovo Thinkpad X301, X61s, X60, T60, X41
>  	 * Fujitsu FSC S7110
>  	 * Acer Aspire 1830T
> -	 *
> -	 * pci_save_state() is needed to prevent driver/pci from
> -	 * automagically putting the device into D3.
>  	 */
> -	pci_save_state(pdev);
> -	if (!(hibernation && GRAPHICS_VER(dev_priv) < 6))
> -		pci_set_power_state(pdev, PCI_D3hot);
> +	if (hibernation && GRAPHICS_VER(dev_priv) < 6)
> +		pdev->skip_bus_pm = true;

.skip_bus_pm was previously strictly internal to
drivers/pci/pci-driver.c.  Not sure about using it outside
drivers/pci/; would want Rafael to chime in.

>  	return 0;
>  }
> @@ -1137,6 +1133,7 @@ static int i915_drm_suspend_noirq(struct drm_device *dev, bool hibernation)
>  int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
>  				   pm_message_t state)
>  {
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	int error;
>  
>  	if (drm_WARN_ON_ONCE(&i915->drm, state.event != PM_EVENT_SUSPEND &&
> @@ -1158,6 +1155,9 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
>  	if (error)
>  		return error;
>  
> +	pci_save_state(pdev);
> +	pci_set_power_state(pdev, PCI_D3hot);
> +
>  	return 0;
>  }
>  
> -- 
> 2.44.2
> 
