Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2D76CECAB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 17:19:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80DF110E19A;
	Wed, 29 Mar 2023 15:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 964 seconds by postgrey-1.36 at gabe;
 Wed, 29 Mar 2023 15:19:40 UTC
Received: from mailrelay1-1.pub.mailoutpod2-cph3.one.com
 (mailrelay1-1.pub.mailoutpod2-cph3.one.com [IPv6:2a02:2350:5:400::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3398410E19A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 15:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa2;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=KFNxHE0QXa2PWKJfN5y9uL4Qs71FXfuJ+fonDr5o8kI=;
 b=itk4HvEbpN8zUXdBdxPPXbN92iWD8GSnQgkIfAqb3sM/7L60UqYkid2BXrGGJOHgeuaenweaJ/yBu
 nAcLZ9R3d0SOZrZ6+h0WqAPrWj/YXELR6/lR1OzP91uE90slqIaVbjnkGMBzv1yRZK3a2OZcozeh1B
 RokVSMlaEr+28zZfHPeDpz6KVoO591VsW840uN+Z75m6c37faX7IwI6GU/BtDN414AfJrQuOxHJBuV
 t6H+CSZwNcQyH0zrKlWv7kXHiU9emWOOzoB5A+DDjJgarPRah7JiQhn3a3197byX7U4eLWQT2VsgD4
 t9+rFLHJWOlG29I+lnJHuR+gvGnrs0A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed2;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=KFNxHE0QXa2PWKJfN5y9uL4Qs71FXfuJ+fonDr5o8kI=;
 b=Sb+klSISZzKyB9yU2nHp9Pg7csbh7hCXm/seICmhlZgRhgXx2N+7Gk9VeuDPUAZoL6qUaCR37Bce8
 MFK7UOYBw==
X-HalOne-ID: de3d27f9-ce42-11ed-9a1a-99461c6a3fe8
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
 by mailrelay1 (Halon) with ESMTPSA
 id de3d27f9-ce42-11ed-9a1a-99461c6a3fe8;
 Wed, 29 Mar 2023 15:03:34 +0000 (UTC)
Date: Wed, 29 Mar 2023 17:03:32 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20230329150332.GA1201392@ravnborg.org>
References: <20230328111422.23986-1-tzimmermann@suse.de>
 <20230328111422.23986-3-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230328111422.23986-3-tzimmermann@suse.de>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Initialize fbdev DRM client
 with callback functions
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
Cc: javierm@redhat.com, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 rodrigo.vivi@intel.com, airlied@gmail.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Thomas,

On Tue, Mar 28, 2023 at 01:14:20PM +0200, Thomas Zimmermann wrote:
> Initialize i915's fbdev client by giving an instance of struct
> drm_client_funcsi to drm_client_init(). Also clean up with
An extra i had sneaked in here

	Sam
