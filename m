Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D85191E752D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 07:06:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73DA76E858;
	Fri, 29 May 2020 05:06:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1245B6E858
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 05:06:25 +0000 (UTC)
IronPort-SDR: xyG0Jd7JVt25hKbBlo+iKzFE2PRrORpRZhiZFATKcgGSeeBUEVQBD1NIsAFf3yrYO39qElEfuE
 d1O3KvHNHX0g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 22:06:25 -0700
IronPort-SDR: Q378vlAV+5CbbfwgiLK3pPtw6LQwoo8drUIOmgXm7VswzoX2a1rN/wOv2n9dXGJGsZ/HvqPI4O
 L/mpkgwofyHg==
X-IronPort-AV: E=Sophos;i="5.73,447,1583222400"; d="scan'208";a="443244518"
Received: from vtsikino-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.43.186])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 22:06:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Al Viro <viro@zeniv.linux.org.uk>,
 Linus Torvalds <torvalds@linux-foundation.org>
In-Reply-To: <20200529004050.GY23230@ZenIV.linux.org.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200528234025.GT23230@ZenIV.linux.org.uk>
 <20200529004050.GY23230@ZenIV.linux.org.uk>
Date: Fri, 29 May 2020 08:06:14 +0300
Message-ID: <87ftbj1gah.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCHES] uaccess i915
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
Cc: linux-fsdevel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 29 May 2020, Al Viro <viro@zeniv.linux.org.uk> wrote:
> 	Low-hanging fruit in i915 uaccess-related stuff.
> There's some subtler stuff remaining after that; these
> are the simple ones.

Please Cc: intel-gfx@lists.freedesktop.org for i915 changes.

Also added Chris who I believe will be able to best review the changes.


BR,
Jani.




-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
