Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8966619F9CE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 18:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D8D6E432;
	Mon,  6 Apr 2020 16:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 004386E42E;
 Mon,  6 Apr 2020 16:09:43 +0000 (UTC)
IronPort-SDR: vX4J4aivWpI5FvJcKicRW0EJL0ZoFM5htNTMuLf/L8WNkKNO3s+XyocJK/Z8l19Js19bfS+3fe
 FWbCQco8D78A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 09:09:32 -0700
IronPort-SDR: evvur/RzDFFkOD1sCw7UnPoC8vWzGiNwCLNb6T557rz1M5iXeCtiSQK5dgrSVBhVDDBIcEJOzb
 ZLmeTExSPSeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="243520909"
Received: from asegeda-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.30.224])
 by fmsmga008.fm.intel.com with ESMTP; 06 Apr 2020 09:09:30 -0700
Date: Mon, 6 Apr 2020 19:09:29 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200406160929.GA5077@intel.intel>
References: <20200406153518.1642031-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406153518.1642031-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/i915_hangman: Drop last
 reference to bygone 'i915_error_state'
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Mon, Apr 06, 2020 at 04:35:18PM +0100, Chris Wilson wrote:
> The test is looking at sysfs/error so dumping the old
> debugfs/i915_error_state looks quite silly. The only dilemma is whether
> it is worth replacing with a line-by-line dump. I propose we make that a
> future problem -- and leave it to whoever has to debug it next time.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
