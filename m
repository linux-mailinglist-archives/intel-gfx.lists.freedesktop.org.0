Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6935133F914
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 20:23:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B756F6E842;
	Wed, 17 Mar 2021 19:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD4E6E842
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 19:23:39 +0000 (UTC)
IronPort-SDR: xg2vTkBxXFJm0VaQI64NkpFl3mxZfgSxLNiCwmjB/8qE6LqAOtQMVmkoQ5fU5Blb+k+ttbhXhs
 Fad+E1ynv4dA==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="253542871"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="253542871"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 12:23:38 -0700
IronPort-SDR: 6jqbLww7Hqg159mjFJuB5wns0bee4naMOnDNAcbAVSGR8hoHVVI2qHuMw0YrSUrhFOgGgpPUs0
 QcwvNYxjIPnA==
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="412775831"
Received: from jksalasr-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.42.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 12:23:37 -0700
Date: Wed, 17 Mar 2021 12:23:37 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210317192337.jlhwzbghbnqe3fjm@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1615998927.git.jani.nikula@intel.com>
 <44559ef456015f65a863c3d89a9bea9157d13a05.1615998927.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44559ef456015f65a863c3d89a9bea9157d13a05.1615998927.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 04/14] drm/i915/bios: move aux ch and ddc
 checks at a lower level
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 17, 2021 at 06:36:43PM +0200, Jani Nikula wrote:
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_bios.c | 12 ++++++------
> 1 file changed, 6 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>index 5e7dc0899ab1..3db41fe0c546 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -1505,6 +1505,9 @@ static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
> 	const struct ddi_vbt_port_info *info;
> 	enum port port;
>
>+	if (!ddc_pin)
>+		return PORT_NONE;
>+
> 	for_each_port(port) {
> 		info = &i915->vbt.ddi_port_info[port];
>
>@@ -1521,9 +1524,6 @@ static void sanitize_ddc_pin(struct drm_i915_private *i915,
> 	struct ddi_vbt_port_info *info = &i915->vbt.ddi_port_info[port];
> 	enum port p;
>
>-	if (!info->alternate_ddc_pin)
>-		return;
>-
> 	p = get_port_by_ddc_pin(i915, info->alternate_ddc_pin);
> 	if (p == PORT_NONE)
> 		return;
>@@ -1555,6 +1555,9 @@ static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
> 	const struct ddi_vbt_port_info *info;
> 	enum port port;
>
>+	if (!aux_ch)
>+		return PORT_NONE;
>+
> 	for_each_port(port) {
> 		info = &i915->vbt.ddi_port_info[port];
>
>@@ -1571,9 +1574,6 @@ static void sanitize_aux_ch(struct drm_i915_private *i915,
> 	struct ddi_vbt_port_info *info = &i915->vbt.ddi_port_info[port];
> 	enum port p;
>
>-	if (!info->alternate_aux_channel)
>-		return;
>-
> 	p = get_port_by_aux_ch(i915, info->alternate_aux_channel);
> 	if (p == PORT_NONE)
> 		return;
>-- 
>2.20.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
