Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90604308962
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 14:39:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FFC46EB1F;
	Fri, 29 Jan 2021 13:39:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 506B36EB1F
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 13:39:39 +0000 (UTC)
IronPort-SDR: 7q4wKliHZADyx/9D/bOV4bctLF0xCcPfH/Tqyr9lI1nRYu//S9l3rmzSfs66MLC6sNwoBhFrRM
 dt/iVOXrOesQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="199267192"
X-IronPort-AV: E=Sophos;i="5.79,385,1602572400"; d="scan'208";a="199267192"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 05:39:37 -0800
IronPort-SDR: 7I4VdXadR7lSn8G7/tdmu6YGirlhk73A1GuMof70ANpcm0GMCtiOzWuRzSGvZUagJln7JbqQG2
 hMBqHqLl9UGw==
X-IronPort-AV: E=Sophos;i="5.79,385,1602572400"; d="scan'208";a="389307046"
Received: from okozlova-mobl.ccr.corp.intel.com (HELO [10.252.33.235])
 ([10.252.33.235])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 05:39:36 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210129131137.1245023-1-maarten.lankhorst@linux.intel.com>
 <161192617618.12947.11697005255103713279@build.alporthouse.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <f269c5f7-7292-f6dd-5a26-0c0b77a80336@linux.intel.com>
Date: Fri, 29 Jan 2021 14:39:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <161192617618.12947.11697005255103713279@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add missing -EDEADLK path in
 execbuffer ggtt pinning.
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

Op 29-01-2021 om 14:16 schreef Chris Wilson:
> Quoting Maarten Lankhorst (2021-01-29 13:11:37)
>> In reloc_iomap we swallow the -EDEADLK error, but this needs to
>> be returned for -EDEADLK handling. Add the missing check to
>> make bsw pass again.
> What lock? You already have the pages reserved, why are we not just using
> the earlier reservation.
> -Chris

We start taking locks on the vm ggtt objects, this is going to break with the object mm lock removal break. So easiest fix is to add missing -EDEADLK here.

Any pinning operation may fail with -EDEADLK, it's something we should always handle.

~Maarten

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
