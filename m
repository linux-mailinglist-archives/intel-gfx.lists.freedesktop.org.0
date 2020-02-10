Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26882158400
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 21:03:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1A596ED42;
	Mon, 10 Feb 2020 20:03:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1417B6ED42
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 20:03:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 12:03:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,426,1574150400"; d="scan'208";a="251298487"
Received: from dongwonk-z87x-ud5h.fm.intel.com (HELO dongwonk-Z87X-UD5H)
 ([10.105.128.129])
 by orsmga002.jf.intel.com with ESMTP; 10 Feb 2020 12:03:09 -0800
Date: Mon, 10 Feb 2020 11:54:11 -0800
From: Dongwon Kim <dongwon.kim@intel.com>
To: chris@chris-wilson.co.uk
Message-ID: <20200210195411.GA20365@dongwonk-Z87X-UD5H>
References: <20171130180702.29357-1-chris@chris-wilson.co.uk>
 <20200210193407.GA19111@dongwonk-Z87X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210193407.GA19111@dongwonk-Z87X-UD5H>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip CPU synchronisation on
 dmabuf attachments
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
Cc: intel-gfx@lists.freedesktop.org, james.xiong@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The patch is here:
https://lists.freedesktop.org/archives/intel-gfx/2017-November/148988.html

On Mon, Feb 10, 2020 at 11:34:07AM -0800, Dongwon Kim wrote:
> Acked-by: Dongwon Kim <dongwon.kim@intel.com>
> 
> It makes lots of sense to make CPU cache operation done only when
> needed. Similar change was already landed in drm-prime and other
> vendor specific drivers. We are actually seeing huge performance
> boost in a specific customer case where dmabuf was used between
> camera driver (importer) and i915 after applying this patch.
> 
> Please consider upstreaming this code change. 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
