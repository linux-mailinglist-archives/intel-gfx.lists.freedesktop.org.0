Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AA711E484
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 14:24:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29656E85B;
	Fri, 13 Dec 2019 13:24:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D82E6E82C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 13:24:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 05:24:42 -0800
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="208457238"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.10.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 05:24:41 -0800
MIME-Version: 1.0
In-Reply-To: <20191212014629.854076-1-chris@chris-wilson.co.uk>
References: <20191212014629.854076-1-chris@chris-wilson.co.uk>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Fri, 13 Dec 2019 15:24:38 +0200
Message-ID: <157624347875.11099.17890739674383604441@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Use EAGAIN for trylock
 failures
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

Quoting Chris Wilson (2019-12-12 03:46:27)
> While not good behaviour, it is, however, established behaviour that we
> can punt EAGAIN to userspace if we need to retry the ioctl. When trying
> to acquire a mutex, prefer to use EAGAIN to propagate losing the race
> so that if it does end up back in userspace, we try again.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
