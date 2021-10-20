Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2561434DF1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 16:36:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4326E2DC;
	Wed, 20 Oct 2021 14:36:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F8E89DE1;
 Wed, 20 Oct 2021 14:36:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="228742141"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="228742141"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 07:36:18 -0700
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="718977093"
Received: from mmazarel-mobl1.ger.corp.intel.com (HELO [10.249.254.139])
 ([10.249.254.139])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 07:36:17 -0700
Message-ID: <f8ff3e319dd4fbb6264e05870c235379e092c34d.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Date: Wed, 20 Oct 2021 16:36:15 +0200
In-Reply-To: <20211018174508.2137279-2-matthew.auld@intel.com>
References: <20211018174508.2137279-1-matthew.auld@intel.com>
 <20211018174508.2137279-2-matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: mark userptr objects as
 ALLOC_USER
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

On Mon, 2021-10-18 at 18:45 +0100, Matthew Auld wrote:
> These are userspace objects, so mark them as such. In a later patch
> it's
> useful to determine how paranoid we need to be when managing cache
> flushes. In theory no functional changes.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


