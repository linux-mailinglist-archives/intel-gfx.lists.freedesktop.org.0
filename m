Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED854D6AEE
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Mar 2022 00:41:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8AC610E0D5;
	Fri, 11 Mar 2022 23:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D6E10E07E
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 23:41:07 +0000 (UTC)
Received: by mail-io1-xd2a.google.com with SMTP id w7so11939587ioj.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 15:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pkKvMSf6MnXfcd6l7RVxSUjFZ/GpOEgb14khwcuVLyI=;
 b=bcvYuIy0VKS4Whc/lcCCn9efxkvbgWHlNDg3YHYXl90T9IydvKepBMFk92K3gWq1IK
 5seIgtCVAbi1Cm2iiWUbD3+m8qL3df/ihRY9OwTp/a+oPpRCUvu5WyJ5G+qmaVsyiVuR
 1Ig+VLYPDtkpJXitJ7i1gL3GEZg1cTf/peRLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pkKvMSf6MnXfcd6l7RVxSUjFZ/GpOEgb14khwcuVLyI=;
 b=ZCPIIKnBVA1nT2APLQfMfcBCfHSfTSOQYMPPWqXE1Lsy6AywmKjlCFXnlCxHcN7MAx
 8AEKJ+VNpktMQ0HgVuGtuw2TTSbi+Z2fIbn6emwf5o1Meh9Ibi7D4Un581jvW3da8Bbu
 rjSsuW5baY/9ecFMymHgG/BUcNJnuGEfYuXe6zFDANre3qQAvJ6HZ8ysyIez0hd4o/IY
 4Dv/xhzJtkZ4D1QZP4MEnEc5SJlZCkzhmmnjJ4TPIQiTFXXk3YxUyuXcFYnluEWPMk/I
 MHQKsbiG01e9A8W4fsCDj9eka9RyxHlQ51ZWBgWBS+QY7As2qaAxyRYxFF3vhjZFo1ER
 kS0A==
X-Gm-Message-State: AOAM533eW6moPBwxOJFdknLkpmBaJounhGzz4PkUtTiwURiv0WjNhCko
 OT+OhTjT6ftpU4B6qQGn+5zd5Q==
X-Google-Smtp-Source: ABdhPJzPth2ng8dqIm2wgxEux81DGTJpQdJMwOfPRoKijd5/6a+92pH5n6oXCbsQae2ZFlhtlyBkdA==
X-Received: by 2002:a05:6638:a9b:b0:317:12d1:5a46 with SMTP id
 27-20020a0566380a9b00b0031712d15a46mr9743151jas.306.1647042066350; 
 Fri, 11 Mar 2022 15:41:06 -0800 (PST)
Received: from chromium.org ([2620:15c:183:200:5a3:e166:1d11:e36c])
 by smtp.gmail.com with ESMTPSA id
 m4-20020a0566022e8400b006463059bf2fsm4734095iow.49.2022.03.11.15.41.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Mar 2022 15:41:05 -0800 (PST)
Date: Fri, 11 Mar 2022 16:41:03 -0700
From: Drew Davenport <ddavenport@chromium.org>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <YivcB+lv/BMdhoEO@chromium.org>
References: <20220311012218.19025-1-shawn.c.lee@intel.com>
 <20220311012218.19025-2-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220311012218.19025-2-shawn.c.lee@intel.com>
Subject: Re: [Intel-gfx] [v6 1/5] drm/edid: seek for available CEA block
 from specific EDID block index
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
Cc: cooper.chiou@intel.com, william.tseng@intel.com, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 11, 2022 at 09:22:14AM +0800, Lee Shawn C wrote:
> drm_find_cea_extension() always look for a top level CEA block. Pass
> ext_index from caller then this function to search next available
> CEA ext block from a specific EDID block pointer.
> 
> v2: save proper extension block index if CTA data information
>     was found in DispalyID block.
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/drm_edid.c | 43 +++++++++++++++++++-------------------
>  1 file changed, 21 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 561f53831e29..e267d31d5c87 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -3353,16 +3353,14 @@ const u8 *drm_find_edid_extension(const struct edid *edid,
>  	return edid_ext;
>  }
>  
> -static const u8 *drm_find_cea_extension(const struct edid *edid)
> +static const u8 *drm_find_cea_extension(const struct edid *edid, int *ext_index)
>  {
>  	const struct displayid_block *block;
>  	struct displayid_iter iter;
>  	const u8 *cea;
> -	int ext_index = 0;
>  
> -	/* Look for a top level CEA extension block */
> -	/* FIXME: make callers iterate through multiple CEA ext blocks? */
> -	cea = drm_find_edid_extension(edid, CEA_EXT, &ext_index);
> +	/* Look for a CEA extension block from ext_index */
> +	cea = drm_find_edid_extension(edid, CEA_EXT, ext_index);
>  	if (cea)
>  		return cea;
>  
> @@ -3370,6 +3368,7 @@ static const u8 *drm_find_cea_extension(const struct edid *edid)
>  	displayid_iter_edid_begin(edid, &iter);
>  	displayid_iter_for_each(block, &iter) {
>  		if (block->tag == DATA_BLOCK_CTA) {
> +			*ext_index = iter.ext_index;
This could still end up in an infinite loop in patch 2 in the case that
there is no CEA_EXT block in the edid, but there is a CEA block in the
DisplayId block.

Repeating my review comment from elsewhere, consider the case:
- If there are no cea extension blocks in the EDID,
  drm_find_edid_extension returns NULL
- drm_find_cea_extension will then return the first DisplayId block
  with tag DATA_BLOCK_CTA

If the version of the cea data from DisplayId block is less than 3, the
loop will restart and call drm_find_cea_extension the same way, returning
the same DisplayID block every time.

Setting *ext_index inside the display_iter_for_each block doesn't change this,
since we're not checking it.

But I don't think we want to use the same *ext_index both to pass into
drm_find_edid_extension and for tracking the next DisplayId block to check.
This might end up in similar infinite loops or skipping DisplayId blocks.

Maybe you'll need to pass in two indexes to drm_find_cea_extension, one which
is passed to drm_find_edid_extension, and the other to keep track of the next
DisplayId block to check.
>  			cea = (const u8 *)block;
>  			break;
>  		}
> @@ -3643,10 +3642,10 @@ add_alternate_cea_modes(struct drm_connector *connector, struct edid *edid)
>  	struct drm_device *dev = connector->dev;
>  	struct drm_display_mode *mode, *tmp;
>  	LIST_HEAD(list);
> -	int modes = 0;
> +	int modes = 0, ext_index = 0;
>  
>  	/* Don't add CEA modes if the CEA extension block is missing */
> -	if (!drm_find_cea_extension(edid))
> +	if (!drm_find_cea_extension(edid, &ext_index))
>  		return 0;
>  
>  	/*
> @@ -4321,11 +4320,11 @@ static void drm_parse_y420cmdb_bitmap(struct drm_connector *connector,
>  static int
>  add_cea_modes(struct drm_connector *connector, struct edid *edid)
>  {
> -	const u8 *cea = drm_find_cea_extension(edid);
> -	const u8 *db, *hdmi = NULL, *video = NULL;
> +	const u8 *cea, *db, *hdmi = NULL, *video = NULL;
>  	u8 dbl, hdmi_len, video_len = 0;
> -	int modes = 0;
> +	int modes = 0, ext_index = 0;
>  
> +	cea = drm_find_cea_extension(edid, &ext_index);
>  	if (cea && cea_revision(cea) >= 3) {
>  		int i, start, end;
>  
> @@ -4562,7 +4561,7 @@ static void drm_edid_to_eld(struct drm_connector *connector, struct edid *edid)
>  	uint8_t *eld = connector->eld;
>  	const u8 *cea;
>  	const u8 *db;
> -	int total_sad_count = 0;
> +	int total_sad_count = 0, ext_index = 0;
>  	int mnl;
>  	int dbl;
>  
> @@ -4571,7 +4570,7 @@ static void drm_edid_to_eld(struct drm_connector *connector, struct edid *edid)
>  	if (!edid)
>  		return;
>  
> -	cea = drm_find_cea_extension(edid);
> +	cea = drm_find_cea_extension(edid, &ext_index);
>  	if (!cea) {
>  		DRM_DEBUG_KMS("ELD: no CEA Extension found\n");
>  		return;
> @@ -4655,11 +4654,11 @@ static void drm_edid_to_eld(struct drm_connector *connector, struct edid *edid)
>   */
>  int drm_edid_to_sad(struct edid *edid, struct cea_sad **sads)
>  {
> -	int count = 0;
> +	int count = 0, ext_index = 0;
>  	int i, start, end, dbl;
>  	const u8 *cea;
>  
> -	cea = drm_find_cea_extension(edid);
> +	cea = drm_find_cea_extension(edid, &ext_index);
>  	if (!cea) {
>  		DRM_DEBUG_KMS("SAD: no CEA Extension found\n");
>  		return 0;
> @@ -4717,11 +4716,11 @@ EXPORT_SYMBOL(drm_edid_to_sad);
>   */
>  int drm_edid_to_speaker_allocation(struct edid *edid, u8 **sadb)
>  {
> -	int count = 0;
> +	int count = 0, ext_index = 0;
>  	int i, start, end, dbl;
>  	const u8 *cea;
>  
> -	cea = drm_find_cea_extension(edid);
> +	cea = drm_find_cea_extension(edid, &ext_index);
>  	if (!cea) {
>  		DRM_DEBUG_KMS("SAD: no CEA Extension found\n");
>  		return 0;
> @@ -4814,9 +4813,9 @@ bool drm_detect_hdmi_monitor(struct edid *edid)
>  {
>  	const u8 *edid_ext;
>  	int i;
> -	int start_offset, end_offset;
> +	int start_offset, end_offset, ext_index = 0;
>  
> -	edid_ext = drm_find_cea_extension(edid);
> +	edid_ext = drm_find_cea_extension(edid, &ext_index);
>  	if (!edid_ext)
>  		return false;
>  
> @@ -4853,9 +4852,9 @@ bool drm_detect_monitor_audio(struct edid *edid)
>  	const u8 *edid_ext;
>  	int i, j;
>  	bool has_audio = false;
> -	int start_offset, end_offset;
> +	int start_offset, end_offset, ext_index = 0;
>  
> -	edid_ext = drm_find_cea_extension(edid);
> +	edid_ext = drm_find_cea_extension(edid, &ext_index);
>  	if (!edid_ext)
>  		goto end;
>  
> @@ -5177,9 +5176,9 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
>  {
>  	struct drm_display_info *info = &connector->display_info;
>  	const u8 *edid_ext;
> -	int i, start, end;
> +	int i, start, end, ext_index = 0;
>  
> -	edid_ext = drm_find_cea_extension(edid);
> +	edid_ext = drm_find_cea_extension(edid, &ext_index);
>  	if (!edid_ext)
>  		return;
>  
> -- 
> 2.17.1
> 
