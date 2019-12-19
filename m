Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 882D1126474
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 15:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A7B689DB4;
	Thu, 19 Dec 2019 14:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C2BB89DB4
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 14:20:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 06:20:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="228258036"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by orsmga002.jf.intel.com with ESMTP; 19 Dec 2019 06:20:08 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 IRSMSX101.ger.corp.intel.com ([169.254.1.94]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 14:20:07 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 12/15] drm/fb: Extend format_info member
 arrays to handle four planes
Thread-Index: AQHVtb3lIlEgQu8aKkCGoBkni1X5O6fBg1YA
Date: Thu, 19 Dec 2019 14:20:06 +0000
Message-ID: <9bea7f2e95b6e9b79e441398a61ea793ad5aa64c.camel@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-13-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-13-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <01489CCA23AF2643828042EB8FCEBEBD@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/15] drm/fb: Extend format_info member
 arrays to handle four planes
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
Cc: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2019-12-18 at 18:11 +0200, Imre Deak wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> addfb() uAPI has supported four planes for a while now, make
> format_info
> compatible with that.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  include/drm/drm_fourcc.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/include/drm/drm_fourcc.h b/include/drm/drm_fourcc.h
> index 306d1efeb5e0..156b122c0ad5 100644
> --- a/include/drm/drm_fourcc.h
> +++ b/include/drm/drm_fourcc.h
> @@ -78,7 +78,7 @@ struct drm_format_info {
>  		 * triplet @char_per_block, @block_w, @block_h for
> better
>  		 * describing the pixel format.
>  		 */
> -		u8 cpp[3];
> +		u8 cpp[4];
>  =

>  		/**
>  		 * @char_per_block:
> @@ -104,7 +104,7 @@ struct drm_format_info {
>  		 * information from their
> drm_mode_config.get_format_info hook
>  		 * if they want the core to be validating the pitch.
>  		 */
> -		u8 char_per_block[3];
> +		u8 char_per_block[4];
>  	};
>  =

>  	/**
> @@ -113,7 +113,7 @@ struct drm_format_info {
>  	 * Block width in pixels, this is intended to be accessed
> through
>  	 * drm_format_info_block_width()
>  	 */
> -	u8 block_w[3];
> +	u8 block_w[4];
>  =

>  	/**
>  	 * @block_h:
> @@ -121,7 +121,7 @@ struct drm_format_info {
>  	 * Block height in pixels, this is intended to be accessed
> through
>  	 * drm_format_info_block_height()
>  	 */
> -	u8 block_h[3];
> +	u8 block_h[4];
>  =

>  	/** @hsub: Horizontal chroma subsampling factor */
>  	u8 hsub;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
