Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B1031A182
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 16:22:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13736E558;
	Fri, 12 Feb 2021 15:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 692F76E558
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 15:22:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23851230-1500050 for multiple; Fri, 12 Feb 2021 15:22:13 +0000
MIME-Version: 1.0
In-Reply-To: <20210212145302.2461406-1-kai.vehmanen@linux.intel.com>
References: <20210212145302.2461406-1-kai.vehmanen@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 15:22:13 +0000
Message-ID: <161314333325.4581.15533944489214714871@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] Revert "HAX sound: Disable probing snd_hda
 with DG1"
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
Cc: lucas.demarchi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Kai Vehmanen (2021-02-12 14:53:02)
> This reverts commit 3632610d38316bca9b0cd9d649ce3cefab58520a.
> 
> DG1 has been supported in upstream since v5.10 with commit
> 69b08bdfa818 ("ALSA: hda - add Intel DG1 PCI and HDMI ids").

Exactly, otherwise this patch wouldn't have been required to stop CI
from timing out upon snd probing the hdmi components. You need the other
half to be supported as well before CI is ready.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
