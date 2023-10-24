Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74CB7D4FAE
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D27F10E362;
	Tue, 24 Oct 2023 12:23:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2419E10E362;
 Tue, 24 Oct 2023 12:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698150237; x=1729686237;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tEZ/XibHe2n2cQuCeoxV2RGEyAuax6BiONOL0O7dWAA=;
 b=NduKh9yUMVdoR9opHekPkgEWXLjikHP1iKtcw+BGAbkLTUsXRplGEKab
 AJTdNUPGzL6D69HGbREE1xRC5ME22wvPRxjcqUE13K3/lfvei+x0xfACa
 oidkwsUYGSJWlc/5syk4ZuDlcX7RdLfuxDwCSTdjI+QmjKciAbfBZDLi1
 +GHRFEFEgqJ/BLgC4kGQ/DOrJ8rs/yezsuSOWUWD+d+G5c6o5feT77NUv
 ZLwqxneoOEXhnR78W/13VeDEK2a1J1tw+SiRSG5iEOvMRB0elIYZq2HbJ
 rkVeOemIME0McRdmKYiQuv3zOccxW7ZDgWtK1He0oIJsmit4pzuu2nO9G g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="8595819"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="8595819"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:23:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="875053470"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="875053470"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:23:55 -0700
Date: Tue, 24 Oct 2023 14:23:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZTe3WC-KONdsCNI5@ashyti-mobl2.lan>
References: <20231023121305.12560-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023121305.12560-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use proper priority enum
 instead of 0
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Mon, Oct 23, 2023 at 02:13:05PM +0200, Nirmoy Das wrote:
> I915_PRIORITY_NORMAL is 0 so use that instead for better
> readability.
> 
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
