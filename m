Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2223204E5
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Feb 2021 11:23:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8966E123;
	Sat, 20 Feb 2021 10:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E443F6E123
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Feb 2021 10:23:30 +0000 (UTC)
IronPort-SDR: Fyh1OMDTMxxysepp5ymvMD6J38S6BPgC3kVRb9Mr992QFeMmOI5m/+mt8SJTKr5yZrpP2Mgqzc
 c2MISYOZPMKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="245499119"
X-IronPort-AV: E=Sophos;i="5.81,192,1610438400"; d="scan'208";a="245499119"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2021 02:23:29 -0800
IronPort-SDR: 8Fp7H38X9kXgF86MmRmo/G+rlQmhW5x1+0eBjNrKoGRg0zS6hS4D5S4qm4Hv4QhLarDWcTrZNS
 CbdIJuHzh0Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,192,1610438400"; d="scan'208";a="428448582"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 20 Feb 2021 02:23:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 20 Feb 2021 12:23:26 +0200
Date: Sat, 20 Feb 2021 12:23:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <YDDjHgrUpEyZbw+j@intel.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
 <20210218052333.16109-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218052333.16109-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/vbt: update DP max link rate
 table
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 William Tseng <william.tseng@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 18, 2021 at 01:23:33PM +0800, Lee Shawn C wrote:
> According to Bspec #20124, max link rate table for DP was updated
> at BDB version 230. Max link rate can support upto UHBR.
> =

> After migrate to BDB v230, the definition for LBR, HBR2 and HBR3
> were changed. For backward compatibility. If BDB version was
> from 216 to 229. Driver have to follow original rule to configure
> DP max link rate value from VBT.
> =

> v2: split the mapping table to two for old and new BDB definition.
> v3: return link rate instead of assigning it.
> v4: remove the useless variable.
> =

> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
<snip>
> @@ -445,8 +456,8 @@ struct child_device_config {
>  	u16 dp_gpio_pin_num;					/* 195 */
>  	u8 dp_iboost_level:4;					/* 196 */
>  	u8 hdmi_iboost_level:4;					/* 196 */
> -	u8 dp_max_link_rate:2;					/* 216 CNL+ */
> -	u8 dp_max_link_rate_reserved:6;				/* 216 */
> +	u8 dp_max_link_rate:3;					/* 230 CNL+ */
> +	u8 dp_max_link_rate_reserved:5;				/* 230 */

I tweaked the comments here to say "216/230" to retain some hint
that version 216 already added some of this.

And now pushed. Thanks.

>  } __packed;
>  =

>  struct bdb_general_definitions {
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
