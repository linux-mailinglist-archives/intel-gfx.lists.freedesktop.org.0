Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C06E24DCEF4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 20:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241EE10E096;
	Thu, 17 Mar 2022 19:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AADB10E096
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 19:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647546068; x=1679082068;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=x3utKGqbfe6Uv0EXZYBCWKjZWOYwDlMbYfMExtoqKsA=;
 b=LaGVCREBTJYlbp8grRhqR5G8Pg28BfAtfAMLR1hEzkojz2V4lJCbkxmW
 DIwTF4JlfJR+tE9u/6GCA8xzfIx9afS6nA9kf0b/smK56r2hPOCnu3Cau
 un1072IoGwfdwjPR/BAHqXmmNv0UwRf/gkudlL82gGZWgHkYWZL6subhL
 nZcxqTpK9SaF2pcaEzkzDCAEZ3JBwegC0tBpSuzKQWSVlEsEmpXz2mtgq
 1HJ6EYGvCyFAl4jWY+pV9rMlpUMzSVF2ZVOsF7qiL2Qtz2wftdOO066zR
 KiE18uG1fzFa89aiz2NBT/yaNGpNdYZU4K29x8lG+3ynZDPm9Mt+s3kMb w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="244420086"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="244420086"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:41:07 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="599221648"
Received: from cjmartin-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.31.111])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:41:07 -0700
Date: Thu, 17 Mar 2022 12:41:04 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220317194104.ukzoju6az3lyskyo@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1647542120.git.jani.nikula@intel.com>
 <7fe2a6ea6797086bf854fb9dd88bbc6696cafadf.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <7fe2a6ea6797086bf854fb9dd88bbc6696cafadf.1647542120.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/dmc: move dmc debugfs to
 intel_dmc.c
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 17, 2022 at 08:36:15PM +0200, Jani Nikula wrote:
>Continue localizing DMC register and data access to intel_dmc.c.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
