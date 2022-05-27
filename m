Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B0A535C2E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 10:54:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2C410E588;
	Fri, 27 May 2022 08:54:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D4E10E588;
 Fri, 27 May 2022 08:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653641659; x=1685177659;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TBMKLtw76BMLWKnCn6R7QwYjsCFBckyEXlA+kSMi8Yo=;
 b=WgoqYBpMwf19Vyky3DQG+aSMsbJQ1qUAAo2WVtCqA3luC2q8lM4NpOfE
 VVnVBlgL9J9GYQMzRggeAKWSCfUT2jesSx2yXTMQVYSz7t5/TbGAOXyiU
 URvJ51C+t5J5wZ6GuBb0dX+PD8f1LURg4Axy5DaXUY7zyTesaB4LmbwkS
 jrfL9g0L12+hyG2NCEiql1rwg/Tc7JA8SAaM2EUuqO4LUPUaojPvmDN6R
 So8aMOqTXkeqSshwv9E8Wz6uKmZ67BZM0CqekFqC+MPzyBIEj2nT2lpem
 dosm7K6y8jDqy+B2HKwlZ/VM5weLHklwNkkrb42UVeUrCF9AMD7Qs6ShO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="271997520"
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="271997520"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 01:54:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="550110697"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.90])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 01:54:16 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94.2)
 (envelope-from <petri.latvala@intel.com>)
 id 1nuVhR-000uDz-Sc; Fri, 27 May 2022 11:52:01 +0300
Date: Fri, 27 May 2022 11:52:01 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YpCRMT+Q9/ujewRq@platvala-desk.ger.corp.intel.com>
References: <20220527075304.2226456-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220527075304.2226456-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Don't show client
 header if no kernel support
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 27, 2022 at 08:53:04AM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> On kernels without support for the feature we should skip showing the
> clients header to avoid confusing users.
> 
> Simply briefly open a render node to the selected device during init and
> look if the relevant fields are present in the fdinfo data.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Issue: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/120
> ---
>  tools/intel_gpu_top.c | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 1984c10dca29..26986a822bb7 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -2389,6 +2389,23 @@ static void process_stdin(unsigned int timeout_us)
>  		process_normal_stdin();
>  }
>  
> +static bool has_drm_fdinfo(const struct igt_device_card *card)
> +{
> +	struct drm_client_fdinfo info;
> +	unsigned int cnt;
> +	int fd;
> +
> +	fd = open(card->render, O_RDWR);
> +	if (fd < 0)
> +		return false;
> +
> +	cnt = igt_parse_drm_fdinfo(fd, &info);
> +
> +	close(fd);
> +
> +	return cnt > 0;
> +}
> +
>  static void show_help_screen(void)
>  {
>  	printf(
> @@ -2545,8 +2562,9 @@ int main(int argc, char **argv)
>  
>  	ret = EXIT_SUCCESS;
>  
> -	clients = init_clients(card.pci_slot_name[0] ?
> -			       card.pci_slot_name : IGPU_PCI);
> +	if (has_drm_fdinfo(&card))
> +		clients = init_clients(card.pci_slot_name[0] ?
> +				       card.pci_slot_name : IGPU_PCI);

Checked all usage of 'clients' below this, and everything handles NULL
properly.

That said, nothing seems to free() it, am I reading that correctly?

Anyway, that can be left for another patch, this change is
Reviewed-by: Petri Latvala <petri.latvala@intel.com>


>  	init_engine_classes(engines);
>  	if (clients) {
>  		clients->num_classes = engines->num_classes;
> -- 
> 2.32.0
> 
