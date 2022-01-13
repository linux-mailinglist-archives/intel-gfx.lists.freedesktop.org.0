Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8CC48DA5B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 16:02:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6559210E32E;
	Thu, 13 Jan 2022 15:02:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5804610E226;
 Thu, 13 Jan 2022 15:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642086132; x=1673622132;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qHM7Jfjo6fSoaX6NNwxnBuSgWuEX5TxLDn1sprhq/9Q=;
 b=YUIc1nqyeaAd4BOsQh7MnzUnVBKRsG8mXMdZAqLMqfVZ+GDyJHNXUM72
 6v/gENk69+N7EOrElFq6cbWkqCj0NnGeZ+7Zvd6BcJKSI6qoS3CetkOfS
 karEZ6KLutq1WSvJ6iM5mIXcKl/MaQcTyBIAfjDBaQKwdxTeKsXzZs6wm
 4reKQZPviZ9U9VZl1TgjUd6beNAapw0zMcacd3iU7PqjC4GwNSX4CeYAT
 ochHXbaHDmJOHGbsriihZbQw+cwcCXGrV/j+GZ8bfOJBWtSVE8zl/JWwK
 0tWpX041PGfWlJACvTb9jw+xbM5lPZYfsSOgrd2LZL0Ob4BsX30US5LQ1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="224005829"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="224005829"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 07:01:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="670536300"
Received: from inechita-mobl2.ger.corp.intel.com (HELO [10.249.254.193])
 ([10.249.254.193])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 07:01:48 -0800
Message-ID: <377b08f8-4a70-dfde-0872-032da8102fb0@linux.intel.com>
Date: Thu, 13 Jan 2022 16:01:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220113114500.2039439-1-maarten.lankhorst@linux.intel.com>
 <20220113114500.2039439-6-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220113114500.2039439-6-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v5 5/6] drm/i915: Remove support for
 unlocked i915_vma unbind
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/13/22 12:44, Maarten Lankhorst wrote:
> Now that we require the object lock for all ops, some code handling
> race conditions can be removed.
>
> This is required to not take short-term pins inside execbuf.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Acked-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


