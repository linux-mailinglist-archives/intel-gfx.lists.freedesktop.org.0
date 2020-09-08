Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A636260E4E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 11:07:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 124F16E1B2;
	Tue,  8 Sep 2020 09:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7516E1B2
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 09:07:48 +0000 (UTC)
IronPort-SDR: ZIQyMnr1G1h2hYjgvxQccgooVh4veIncj1Pv+mUcFq9uxI38U4ujWV5S5r63YU80Q5POPJJsA0
 cjx3J1KxCRng==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="222307624"
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="222307624"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 02:07:47 -0700
IronPort-SDR: rHwojlhVW0dFkc/kb3riPBbvzthmB+nEUSNIYk5lH7YGRccxAgSKkZK7TtpFoIs7UrFOOSmafa
 FIbPT+cfnJ6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="299721582"
Received: from shiche4x-mobl.gar.corp.intel.com (HELO [10.254.211.164])
 ([10.254.211.164])
 by orsmga003.jf.intel.com with ESMTP; 08 Sep 2020 02:07:44 -0700
To: Christoph Hellwig <hch@infradead.org>
References: <20200903201839.7327-1-murphyt7@tcd.ie>
 <20200903201839.7327-6-murphyt7@tcd.ie>
 <20200907070035.GA25114@infradead.org>
 <CALQxJute8_y=JsW4UV1awSccOjxT_1OyPdymq=R_PurVQzENeQ@mail.gmail.com>
 <20200908053619.GA15418@infradead.org> <20200908055510.GA19078@infradead.org>
 <9655fdc9-6ea0-e4c1-e104-a9a8981ecb1e@linux.intel.com>
 <20200908062326.GB20774@infradead.org>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <fd4aef77-4ec6-da94-8508-49b1a21143dd@linux.intel.com>
Date: Tue, 8 Sep 2020 17:07:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200908062326.GB20774@infradead.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH V2 5/5] DO NOT MERGE: iommu: disable list
 appending in dma-iommu
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
Cc: intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020/9/8 14:23, Christoph Hellwig wrote:
> On Tue, Sep 08, 2020 at 02:04:53PM +0800, Lu Baolu wrote:
>> Do you mind telling where can I find Marek's series?
> 
> [PATCH v10 00/30] DRM: fix struct sg_table nents vs. orig_nents misuse
> 
> on various lists including the iommu one.
> 

Get it. Thank you!

Best regards,
baolu
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
