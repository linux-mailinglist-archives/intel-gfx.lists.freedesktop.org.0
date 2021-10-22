Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A315437400
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 10:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6456F6E908;
	Fri, 22 Oct 2021 08:52:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 142E66E904;
 Fri, 22 Oct 2021 08:52:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="210050500"
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="210050500"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 01:52:17 -0700
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="484600568"
Received: from dkarner-mobl.ger.corp.intel.com (HELO [10.252.48.154])
 ([10.252.48.154])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 01:52:16 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
References: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
 <20211021103605.735002-19-maarten.lankhorst@linux.intel.com>
 <CAM0jSHO1qugMmDtgJLsQaPvOnynPZaAb9xNNdZV87Nd2SsS11w@mail.gmail.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <8c528a04-5a7c-75b6-e713-69aa3457504b@linux.intel.com>
Date: Fri, 22 Oct 2021 10:52:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAM0jSHO1qugMmDtgJLsQaPvOnynPZaAb9xNNdZV87Nd2SsS11w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 19/28] drm/i915: Pass trylock context to
 callers
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

Op 21-10-2021 om 20:03 schreef Matthew Auld:
> On Thu, 21 Oct 2021 at 11:37, Maarten Lankhorst
> <maarten.lankhorst@linux.intel.com> wrote:
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Needs a proper commit message.

What about this?

drm/i915: Pass trylock context to callers

We are moving away from short term pinning, and need a way to evict objects locked by the current context. Pass the ww context to all eviction functions, so that they can evict objects that are already locked by the current ww context.

On top of that, this slightly improves ww handling because the locked objects are marked as locked by the correct ww.

