Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDAC90E985
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 13:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5670B10EC53;
	Wed, 19 Jun 2024 11:34:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=fooishbar-org.20230601.gappssmtp.com header.i=@fooishbar-org.20230601.gappssmtp.com header.b="uvB2cByh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3278C10EC55
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 11:34:27 +0000 (UTC)
Received: by mail-qv1-f49.google.com with SMTP id
 6a1803df08f44-6b5031d696dso3881586d6.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 04:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1718796866; x=1719401666;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=9fholmAL3OeBvxeRVBum3NdobGbdweLBjTLLtkeRi6k=;
 b=uvB2cByhIWILAebDqs+dXeLMyoOsKUZhJWDB4rOV3uZ4ZqDI3AzkV1LKzrvjHYSB6w
 /BJPBi/wvdgPykmRnDWktbviYqO0GsF3yruJ9M5Ba9kSeeVnbm/dC1+bU+6rsX/VLUe5
 vV93VREeQSCcrmIvwtWW5ALnQLIin2Fv5I/xi2DiOaY8+vqPfW76E83lbHTA9mv5VJ87
 UE52FqyfBZaO0KHd0kfX9VsPIT8DL7ISo6KIm59CljVQFYl7VDkVsAOVD7PFJQ8S0Sem
 eJWra8geQ7v5ailHHV4sACALQOgZ95GrZ4yoPcoJQicmF3v656fUgev09D4xPnCj33gx
 GrhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718796866; x=1719401666;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9fholmAL3OeBvxeRVBum3NdobGbdweLBjTLLtkeRi6k=;
 b=JM0GP/+d3/824R4uQGDPuA43hjdrhZ+O/tzhSHYY0raFSA7SiPITDVOiHAe6ADBMck
 4rMSwusZt9bJA/dccj5Qqk9DwabPdNpCUnmTtZ1vaKIQz9Ls58BCdk7RLHjWFhhPT8FP
 hjTi4GNOcEp2CI1zonTKbnbPbNJyxFeBRMyBzrrLBAyazZH3Wg6o3gzvWPvgwuhg6j5K
 XPoP5aa+nCYjEDPB4hcEFdpGAhczXf+3Xn52V0opazfw+YY0teLKREy6kysPXD9Z0nwO
 PJXPaUXAVwUh6cymsZnzAo8ybRJaUHe8uymY9lKi6r/xTRWwpDmnvpoz2c/h0B7wnpLD
 yGLw==
X-Gm-Message-State: AOJu0YykcfdfVV+aRt4+cDBDhNV3inCz0YyiJNnmnck5ktRyzW63WYJs
 lZb5JlYhUotCjblo6b5SIrYmTIzI0jJQAgp4SSE0N+eRtu1R2/WpO3jde/U+26/wFpPxjeGUnma
 suLjWYAlrTILkOcP4qD3ld5HuYhZoBIHHCaEsTA==
X-Google-Smtp-Source: AGHT+IEgSFcwPm82u8gf5stfX15WozNE1lQj0lsTnEb7wbQxmPEfHb+S5KLUJcDiDkb9ApM0vVHMOviDtilCg3GKejo=
X-Received: by 2002:a0c:e10c:0:b0:6b0:77fb:8f16 with SMTP id
 6a1803df08f44-6b501e25bf9mr25755236d6.21.1718796866109; Wed, 19 Jun 2024
 04:34:26 -0700 (PDT)
MIME-Version: 1.0
References: <20240612204712.31404-3-ville.syrjala@linux.intel.com>
 <20240619113144.1616-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240619113144.1616-1-ville.syrjala@linux.intel.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 19 Jun 2024 12:34:14 +0100
Message-ID: <CAPj87rPH+Hb49R-ebk=-GavGiRcjef8dkv62-yFy33TXdO5NtA@mail.gmail.com>
Subject: Re: [PATCH v3 2/9] drm: Export drm_plane_has_format()
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
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

On Wed, 19 Jun 2024 at 12:31, Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
> Export drm_plane_has_format() so that drivers can use it.

Acked-by: Daniel Stone <daniels@collabora.com>
