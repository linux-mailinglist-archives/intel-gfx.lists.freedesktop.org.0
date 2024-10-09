Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BAF996C51
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 15:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ED4710E71A;
	Wed,  9 Oct 2024 13:38:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bNRNMVUb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1C1110E71A
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 13:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728481086; x=1760017086;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=79jbLz3bji9OkggYUgQKmRbtr1Scbi2J2AMC8bp/3AA=;
 b=bNRNMVUbhce/BVO4sDbbvex+kgJneHN/FF9E9wTS5PmPkcNDsRh5rpIv
 hf2Q6Zm0rUX5PMz/uSkKqqCBK0FQQMMlNhqy988JFbymAwkBmqkol6V+l
 gQ3Rh84nQyC6ND2fbNlh7MA2N85cTUioydZgmZD2+R7inBwr7OAX7iNfD
 fQ05t5ct8QV9zOLUUpEmhyRO4BaokpEYwV/OdCKaqqzKcLtlTblmh9ps6
 Alz1musbf/nIAm09AFfGkJIkzUOeINlG0ZMlyoMx0zvas+8ivf3dq6loA
 zKM+JeO/DTQ+jySG6kaBbZx/d+BaWn+bfOh45xOzRXDPzE60TXg0V3D6L Q==;
X-CSE-ConnectionGUID: UoQiybvaQQa1OR2uNcBAOQ==
X-CSE-MsgGUID: S28FuPeITFeTe4RYxR/HAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38907851"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="38907851"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:38:06 -0700
X-CSE-ConnectionGUID: vOjuw0oaQOieuZTkPwgj3A==
X-CSE-MsgGUID: BDuunJPRQw+Hm55MxCjKVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="77077167"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:38:04 -0700
Date: Wed, 9 Oct 2024 16:32:25 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com, 
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 6/9] drm/i915/display: iterare through channels if no
 feasible frequencies
In-Reply-To: <20241008082327.342020-7-vinod.govindapillai@intel.com>
Message-ID: <alpine.DEB.2.22.394.2410091630220.14041@eliteleevi.tm.intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
 <20241008082327.342020-7-vinod.govindapillai@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

Hi,

On Tue, 8 Oct 2024, Vinod Govindapillai wrote:

> For a pipe configuration, if no supported audio frequencies are
> found, then start reducing the audio channels and try assess the
> sad audio frequency list again.

s/iterare/iterate/ in patch subject, but otherwise looks good. For this
patch:

Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Br, Kai

