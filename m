Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 320155AB32C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 16:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A24A10E85E;
	Fri,  2 Sep 2022 14:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0232910E85F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 14:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662128113; x=1693664113;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=TQCfIcHTA6lBe4mPcRUJmDjHUd2vgoBgt4dnSWaPgmU=;
 b=SjmNFUXXGQueCHQ86N5sUPIyR6lIaPd4J10eS8d8N6Aong8bPi4uFK71
 tvH5MkJSPdM5rbxH6KbBSD1z0+zDL6jldNf7o4RNblD0WXMkOqy9Gh3SZ
 BJKXvnMJSAr9aFuhuHbMDpzgRYobAHBjxcOBkb/+bEd0S8f8dh9IERPrp
 K9Bdn13TpSbiOw+wjpOW3xe3O09EGQtmwqpo507dWB8/8ycW243qKPne6
 +1bSLmL1VROD+CnUtEuqWOPlJMax01qPr11F0iO6OHnYq+LeCcyn0BMxk
 OW+4+DXxMSHhdqb0Vj04lPOUByDu3tVW2daUBbfCQkooJlGTM3A5wlNV2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="297274898"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="297274898"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:15:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674368156"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:15:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220715202044.11153-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-11-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 17:15:00 +0300
Message-ID: <87wnaldfrv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915: Rename some VBT bits
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

On Fri, 15 Jul 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The allow vs. block display switch bits are named rather
> inconsistently. Fix it up.

WTF on the names. :D

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index f56c869e106f..62183c6bdc10 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -553,8 +553,8 @@ struct bdb_psr {
>  struct bdb_driver_features {
>  	/* Driver bits */
>  	u8 boot_dev_algorithm:1;
> -	u8 block_display_switch:1;
> -	u8 allow_display_switch:1;
> +	u8 allow_display_switch_dvd:1;
> +	u8 allow_display_switch_dos:1;
>  	u8 hotplug_dvo:1;
>  	u8 dual_view_zoom:1;
>  	u8 int15h_hook:1;

--=20
Jani Nikula, Intel Open Source Graphics Center
