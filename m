Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCA4A42172
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C74FD10E444;
	Mon, 24 Feb 2025 13:42:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EnlQvQuA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C097910E120
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 10:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740392284; x=1771928284;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PUwXME7uKVxOH0UADhvGxmIAI/w82g6YndLNL38nczg=;
 b=EnlQvQuAMKGNsAmuzIUtBeKrjdGFa/UYK+DhBY3anyd5Ln/X6kRfDiTz
 z6/IWVkOLG2FIcC4jBcHIiajgpZV6KUo9M58WpJTF67lObxNx1qOCeTfZ
 WVFAabefiSPnaT2sHbFPJzFcv4JbEebwD9b64SpFEPxbSQnE16RWUM6uO
 Z/eVF7Q1aTNDMmuR9hXUK4qrZZx9grEGH0jXf+L0EIWT2E9ptiU+pMXLj
 Nbh0sGDCpm0XGDzTf5ToyDJhwMSZkKBOaNLJsJ0vOYEGY2itlTwZkQY6R
 3VnfUaNCygKoQYlhytmMT3Xow3zMYmlDlrjYmv5I93nqjNZrfOIJJ9PNu g==;
X-CSE-ConnectionGUID: qG9Oray/TGS6nWa6DpENoA==
X-CSE-MsgGUID: Dbc4y1n+R8WrEfuKGj5LxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28738004"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28738004"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:18:04 -0800
X-CSE-ConnectionGUID: xla4qk/iRJ+Q8wrk1Gm6uQ==
X-CSE-MsgGUID: XhLC/Hi1TjeXBLt9URpdqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116516038"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.159])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:18:01 -0800
Date: Mon, 24 Feb 2025 11:17:58 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/12] drm/i915: Use REG_BIT() & co. for BDW+ EU/slice
 fuse bits
Message-ID: <Z7xHVpOEvu7tCn6a@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-10-ville.syrjala@linux.intel.com>
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

Hi Ville,

On Wed, Feb 12, 2025 at 01:19:37AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Convert the BDW+ EU/slice fuse bits to the modern REG_BIT()/etc.
> style.

using REG_BIT() and co. doesn't alway make it more readable. In
some of the cases below I would have preferred not to use it.

But on the other hand we keep consistency and bit operations are
not supposed to be easy-readable, anyway.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
