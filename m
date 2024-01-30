Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 144E7843135
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:27:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C8011371D;
	Tue, 30 Jan 2024 23:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
 [209.85.219.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C42B311371D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:27:19 +0000 (UTC)
Received: by mail-qv1-f44.google.com with SMTP id
 6a1803df08f44-6860ff3951aso31128666d6.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706657179; x=1707261979;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Br+8O9gnbn+KJi7WJEuKAFUPU4SixkvxnmfwdBzHEKo=;
 b=PvaxHgcAcMHKUKfstKhIa2Os82s2pWvZ6c91KD3EQFUhUaB2zlXqBdZvMUZwBF/8oY
 k0X6qqARzo47LEZRbpVALtKZ3ardG3i2HwQdvrBElrNkjBbMap8ZmNXSQMbYt6TfOfya
 S+t9dlEGy2dTX45yo7vQBrhij5mrNFIhPevio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706657179; x=1707261979;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Br+8O9gnbn+KJi7WJEuKAFUPU4SixkvxnmfwdBzHEKo=;
 b=Gu54LlXival0Ww9ScMym3LqVlT2PN8cyH+7oAqt/LUB6VDxwkFL0qJi93lWDQv7Ijn
 41pxB4VTewJRSBrvM6rRjSptqysj0gzWc9HIbGou0lJqqNSXLN0MlmehfoiPT1nOx02W
 zlCufuAmHbRH02SzSW4HnWKKgMNFB8/6/anSak9EH9DmqKNukYAyooHXjIA3W0rf3V5X
 XwFxEaCWFUOBiC9ZWEerYcpfedeZpisA/913waxxRAmx5EeryWjKQzbSAfh/iOUTWxmI
 yh5JRLrGRcEsV0kK+TNVrjpgwmaHi9PBRiqxT6DaZZhPy75jEKpY6TzXfWl/xyKVqMoM
 LIYg==
X-Gm-Message-State: AOJu0YzxogVgAM0JESxuIzABpeNx5WVsNVfYUxrr4veriiuD+pB6t2iK
 Ro8WezuDYCrTHj07foAJpqBOhq0/ntEtHOIg9CHnAbFnrWnGWjFAUVTW4lDkMg==
X-Google-Smtp-Source: AGHT+IG8WWaCfnFqMMiPN4+tJvsedjEAGwHmj40IbR5+8Rq1VeXSYG6UBoWxlLqle0DvFVXY6AL2Hg==
X-Received: by 2002:ad4:524a:0:b0:68c:6701:b11e with SMTP id
 s10-20020ad4524a000000b0068c6701b11emr22435qvq.49.1706657179029; 
 Tue, 30 Jan 2024 15:26:19 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 pi12-20020a0562144a8c00b00681785c95e0sm276266qvb.46.2024.01.30.15.26.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:26:18 -0800 (PST)
Date: Tue, 30 Jan 2024 23:26:17 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 14/16] drm/i915: Tweak BIOS fb reuse check
Message-ID: <ZbmFmRSKVsNETZsQ@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-15-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240116075636.6121-15-ville.syrjala@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 16, 2024 at 09:56:34AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently we assume that we bind the BIOS fb exactly into the same
> ggtt address where the BIOS left it. That is about to change, and
> in order to keep intel_reuse_initial_plane_obj() working as intended
> we need to compare the original ggtt offset (called 'base' here)
> as opposed to the actual vma ggtt offset we selected. Otherwise
> the first plane could change the ggtt offset, and then subsequent
> planes would no longer notice that they are in fact using the same
> ggtt offset that the first plane was already using. Thus the reuse
> check will fail and we proceed to turn off these subsequent planes.
> 
> TODO: would probably make more sense to do the pure readout first
> for all the planes, then check for fb reuse, and only then proceed
> to pin the object into the final location in the ggtt...
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>
