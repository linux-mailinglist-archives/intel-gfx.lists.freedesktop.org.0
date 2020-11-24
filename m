Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EEE2C250B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 12:56:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44CA76E2ED;
	Tue, 24 Nov 2020 11:56:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824336E2ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 11:56:33 +0000 (UTC)
IronPort-SDR: d0pvgEWCii2UfbBe4hnXUUtxpTWROnsZfhZHYyZimo1wlH6ig4I6d+3ne9U+QDIJ+ft2BUXeyt
 GV06X0QZPELQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="236068772"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="236068772"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 03:56:33 -0800
IronPort-SDR: eGu97I91yYzbukAddM6CjtZeXEdks49V4Zm54sLE8PfH6pz/aILQ7P5l/1sqIXN46qiy6CGmtk
 IYfK33QSwUVQ==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="478475204"
Received: from dohanlon-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.20.97])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 03:56:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Christoph Hellwig <hch@infradead.org>
In-Reply-To: <20201124094209.GD31963@infradead.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1606153547.git.jani.nikula@intel.com>
 <cc3ff292e4eb4fdc56bee3d690c7b8e39209cd37.1606153547.git.jani.nikula@intel.com>
 <20201124094209.GD31963@infradead.org>
Date: Tue, 24 Nov 2020 13:56:25 +0200
Message-ID: <87ft4zm0ie.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/9] relay: allow the use of const callback
 structs
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 QCA ath9k Development <ath9k-devel@qca.qualcomm.com>,
 Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>, ath11k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 24 Nov 2020, Christoph Hellwig <hch@infradead.org> wrote:
> Otherwise this looks good to me:

v3 sent.

> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks for the reviews, appreciated.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
