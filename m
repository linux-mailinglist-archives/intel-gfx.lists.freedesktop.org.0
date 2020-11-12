Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC562B0F03
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 21:26:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF5A6E432;
	Thu, 12 Nov 2020 20:26:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 010786E431
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 20:26:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22977087-1500050 for multiple; Thu, 12 Nov 2020 20:26:24 +0000
MIME-Version: 1.0
In-Reply-To: <207faf5383f0ec1c37199d827b32e426111a95e2.1605181350.git.jani.nikula@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
 <207faf5383f0ec1c37199d827b32e426111a95e2.1605181350.git.jani.nikula@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 20:26:23 +0000
Message-ID: <160521278317.25046.15295841783824250379@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: remove last traces of
 I915_READ_FW() and I915_WRITE_FW()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-11-12 11:44:35)
> Good riddance! Remove the macros and their remaining references in
> comments.
> 
> intel_uncore_read_fw() and intel_uncore_write_fw() should be used
> instead.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Given the previous patch removing the last user,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
