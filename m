Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E1C2B42DC
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 12:34:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3952389E2B;
	Mon, 16 Nov 2020 11:34:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B84989E2B
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 11:34:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23004510-1500050 for multiple; Mon, 16 Nov 2020 11:33:55 +0000
MIME-Version: 1.0
In-Reply-To: <160552239111.10586.2399354234735639518@jlahtine-mobl.ger.corp.intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-6-sean.z.huang@intel.com>
 <160552239111.10586.2399354234735639518@jlahtine-mobl.ger.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Mon, 16 Nov 2020 11:33:57 +0000
Message-ID: <160552643728.29277.16583038978569204292@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 06/27] drm/i915: Rename the whitelist to
 allowlist
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

Quoting Joonas Lahtinen (2020-11-16 10:26:31)
> Quoting Huang, Sean Z (2020-11-15 23:07:54)
> > Rename the whitelist to allowlist as suggested
> 
> This patch should really be a separate series and most likely needs to
> be done in one go to avoid confusion.
> 
> $ git grep -E '(whitelist|blacklist)' | wc -l
> 173
> 
> The next patch also uses "passlist" terminology, highlighting the need
> to reach an agreement about which term to use.

(allow|deny)list is the trend.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
