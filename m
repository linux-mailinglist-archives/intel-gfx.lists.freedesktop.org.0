Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0383B1D37E9
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 19:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB06D6EB97;
	Thu, 14 May 2020 17:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B266EB97
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 17:21:07 +0000 (UTC)
IronPort-SDR: VhaAo7A3rcpj1P27zP36qKmYoHxatHuMcsGDUnFuF5f8AMM/X1GH9VaF9FonkFIPu8hBGJMidB
 St1ksxEuyTKw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 10:21:07 -0700
IronPort-SDR: jKUwSRlWoxAYQea4s9yaIg+Xbyk4TaKNDK+6iu5nWRVnwsjXxS6zVQMQ3JpM4VC750QESbtjhK
 INCIZobARAUg==
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="437985030"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.82.70])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 10:21:05 -0700
MIME-Version: 1.0
In-Reply-To: <CAPM=9txZjBENfH+EMNHhuxS2pvxbYQrD78tsgniOFU7Wvc2RRw@mail.gmail.com>
References: <20190830105053.17491-1-joonas.lahtinen@linux.intel.com>
 <157295200350.9970.1382566719650661391@jlahtine-desk.ger.corp.intel.com>
 <CAPM=9txZjBENfH+EMNHhuxS2pvxbYQrD78tsgniOFU7Wvc2RRw@mail.gmail.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 14 May 2020 20:21:02 +0300
Message-ID: <158947686257.15520.9175514014749336983@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Document locking guidelines
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pushed using the note:: block. Thanks for the review and ack.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
