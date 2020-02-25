Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9DD16C32F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 15:02:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A4566EADD;
	Tue, 25 Feb 2020 14:02:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5335D6EAD6;
 Tue, 25 Feb 2020 14:02:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20345751-1500050 for multiple; Tue, 25 Feb 2020 14:02:01 +0000
MIME-Version: 1.0
To: David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200225134709.6153-2-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200225134709.6153-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200225134709.6153-2-pankaj.laxminarayan.bharadiya@intel.com>
Message-ID: <158263931977.26598.171017617509031302@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 25 Feb 2020 14:01:59 +0000
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: Add i915 device based
 MISSING_CASE macro
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Pankaj Bharadiya (2020-02-25 13:47:00)
> Now that we have struct drm_device based drm_WARN, introduce struct
> drm_i915_private based i915_MISSING_CASE macro which uses drm_WARN so
> that device specific information will also get printed in backtrace.
> 
> i915_MISSING_CASE macro should be preferred over MISSING_CASE,
> wherever possible.

Whatever for? MISSING_CASE() itself should be a complete picture for the
forgotten code.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
