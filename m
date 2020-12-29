Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC6C2E7095
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:18:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E1E896EC;
	Tue, 29 Dec 2020 12:18:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE55D896EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 12:18:08 +0000 (UTC)
IronPort-SDR: 9woWvmgC0fzzQI0qgLuPEgnrH7XXYsr9Nt3B8YQ0dxTBxragYHOx8CE732gb6/Brh7/ADgR/qt
 HKUSu5qWBIlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="176584345"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="176584345"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 04:18:08 -0800
IronPort-SDR: TOY+zDpERuvolPRaB5BrjccZx+3bhx0ytm2F6/TwnrhPu/LXro1khMGbfKZCCMcIaZkfAau8oQ
 cweTHDsgA+UA==
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="347367829"
Received: from nabyrne-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.27.62])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 04:18:06 -0800
Date: Tue, 29 Dec 2020 14:18:02 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X+seeu+/MGs5bs6T@intel.intel>
References: <20201228155229.9516-1-chris@chris-wilson.co.uk>
 <20201228155229.9516-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201228155229.9516-3-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 03/54] drm/i915/gem: Peek at the inflight
 context
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Mon, Dec 28, 2020 at 03:51:38PM +0000, Chris Wilson wrote:
> If supported by the backend, we can quickly look at the context's
> inflight engine rather than search along the active list to confirm.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
