Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF77672869
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 20:31:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D82E10E811;
	Wed, 18 Jan 2023 19:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B973210E822
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 19:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674070294; x=1705606294;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=5FwIg3pFMAm3QFQN58qb8Xad+sJgzKrFwmK8+nOiB5U=;
 b=iL6KvimtFRteToanhsGkU/+nJBkMzYc0f9JeVd2Bq1x7F3/jLvhYh0bz
 pEpKBtK9W3QTEvsKLyeT0tBzqKfiN2fn4UXA17ZoQv4ty6XZz+Nfno925
 aCpg/ZE6zqSB5DkknxPPP5WM1YVW/qlFhLKp6cvxfGzci1voHIl9IMCPh
 +aYBA9F6LVqynLFVIrj3+s6zGh+U9LEA2IxVvMMqmlfkSYjDH2OjmXOfV
 sb//X7AG85/AsuRU1GG7oINylr7qMVH22xSmM+BWJV9XcHV2qcYM0yzRw
 w0bmrtd8kdVD9rtikUK86xXWa+55gP+u9+6kDTNc9/dPnGEFJREJtqzMy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="312957354"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="312957354"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 11:31:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="767886810"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="767886810"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 11:31:32 -0800
Date: Wed, 18 Jan 2023 21:30:21 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Ville Syrjala <ville.syrjala@linux.intel.com>
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
Message-ID: <alpine.DEB.2.22.394.2301182125120.3532114@eliteleevi.tm.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="-318106570-1882801203-1674070243=:3532114"
Subject: Re: [Intel-gfx] [PATCH v2 00/15] drm/i915: ELD precompute and
 readout
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-1882801203-1674070243=:3532114
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

Hi,

On Tue, 8 Nov 2022, Ville Syrjala wrote:

> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Second attempt at ELD precompute + readout.
> 
> v2:
> - get rid of the hw ELD buffer entirely on !g4x
> - actually use the precomputed ELD in acomp .get_eld()
> - more cleanups/etc. here and there

sorry for the long delay. The question whether there are any 
side-effects in not writing the ELD buffer, is still a slight
concern, but tests seem to be passing, so seems we are good.

For the series:
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Br, Kai
---318106570-1882801203-1674070243=:3532114--
