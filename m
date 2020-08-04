Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6349A23B4E0
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 08:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC0C26E425;
	Tue,  4 Aug 2020 06:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8759F6E425;
 Tue,  4 Aug 2020 06:12:48 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id E76D7AC7D;
 Tue,  4 Aug 2020 06:13:02 +0000 (UTC)
To: Oleksandr Andrushchenko <andr2000@gmail.com>,
 xen-devel@lists.xenproject.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, boris.ostrovsky@oracle.com, airlied@linux.ie,
 daniel@ffwll.ch
References: <20200731125109.18666-1-andr2000@gmail.com>
 <20200731125109.18666-3-andr2000@gmail.com>
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Message-ID: <6d719ab2-d9f6-2c3c-8979-b12a4d10b96d@suse.com>
Date: Tue, 4 Aug 2020 08:12:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200731125109.18666-3-andr2000@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/xen-front: Fix misused
 IS_ERR_OR_NULL checks
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
Cc: intel-gfx@lists.freedesktop.org, sstabellini@kernel.org,
 dan.carpenter@oracle.com,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 31.07.20 14:51, Oleksandr Andrushchenko wrote:
> From: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
> 
> The patch c575b7eeb89f: "drm/xen-front: Add support for Xen PV
> display frontend" from Apr 3, 2018, leads to the following static
> checker warning:
> 
> 	drivers/gpu/drm/xen/xen_drm_front_gem.c:140 xen_drm_front_gem_create()
> 	warn: passing zero to 'ERR_CAST'
> 
> drivers/gpu/drm/xen/xen_drm_front_gem.c
>     133  struct drm_gem_object *xen_drm_front_gem_create(struct drm_device *dev,
>     134                                                  size_t size)
>     135  {
>     136          struct xen_gem_object *xen_obj;
>     137
>     138          xen_obj = gem_create(dev, size);
>     139          if (IS_ERR_OR_NULL(xen_obj))
>     140                  return ERR_CAST(xen_obj);
> 
> Fix this and the rest of misused places with IS_ERR_OR_NULL in the
> driver.
> 
> Fixes:  c575b7eeb89f: "drm/xen-front: Add support for Xen PV display frontend"

Again forgot to Cc stable?


Juergen
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
