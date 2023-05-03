Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5D86F5D45
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 19:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 605BF10E328;
	Wed,  3 May 2023 17:48:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1226910E328
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683136134; x=1714672134;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=ED2Gnrb7OVz1Kj5zs4DCc9eHEOggFt5EbhLVZROtbjU=;
 b=mDXbXm3XQz9ZIHFF/bXCQ0pTxTwBaQvQQW3Se/A1tE7ak1xm9O50eKsN
 FCGIYx3w+l577FXXf+ftdcwLn4rwVWWlJmY5wkceThyCflnzgprU9M7sI
 gV5Cdl+SwaDhokvM5zD2HDdHhuK7voPjn1jwpUC6mp5/eTpaO7jj893VS
 4EVPdxRwTcVVi1Tm9ynCihU6NG6Rv/rxL0FcwN3A0YZhdHHjCh1QoKTiB
 WgXc4SU/UG5e4m6FehR7BL8sqSvnk+8PZ+ugQ8v10QRQONO1YxQGYo9/f
 xiM+Ic4xb+KljuyLKEuzhxsFEk9PTm3XRcOh6/RaKzq4sPwcTyVQpz86T w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347539713"
X-IronPort-AV: E=Sophos;i="5.99,247,1677571200"; d="scan'208";a="347539713"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 10:48:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="674170778"
X-IronPort-AV: E=Sophos;i="5.99,247,1677571200"; d="scan'208";a="674170778"
Received: from arghavi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.62.140])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 10:48:20 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <168309246907.7324.16585705318101149558@jlahtine-mobl.ger.corp.intel.com>
References: <20230502205744.1067094-1-jordan.l.justen@intel.com>
 <168309246907.7324.16585705318101149558@jlahtine-mobl.ger.corp.intel.com>
From: Jordan Justen <jordan.l.justen@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 03 May 2023 10:48:19 -0700
Message-ID: <168313609960.392286.2582780964028825895@jljusten-skl>
User-Agent: alot/0.10
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uapi: Add
 DRM_I915_QUERY_GEM_CREATE_EXTENSIONS query item
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-05-02 22:41:09, Joonas Lahtinen wrote:
> Hi Jordan,
>=20
> This approach was specifically NACKed in the PAT index thread so please
> at least mark any such series as RFC if they are intended to facilitate
> further dialog on the topic.

There was a preference expressed to not do anything from the i915
side, but I didn't know that my idea had been NACKed.

> I've still not seen any explanation why this would be needed at this
> specific case for the PAT index setting feature. Repeating here: You
> should be able to detect missing extension by trying to use it.

There's nothing specific to the set-pat extension, but I would've
liked to use this query to detect I915_GEM_CREATE_EXT_SET_PAT.
Therefore, I was hoping to show how simple implementation of such a
query would be. It doesn't really seem like any further maintainence
of the query would be required as new extensions are added.

Additionally, I was hoping a similar approach could be adopted by Xe.

It's not that anything is particularly difficult in the previous
approach, but this seems like a pretty simple thing i915 could do to
give userspace a clue about which extensions it knows about.

-Jordan
