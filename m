Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 067D7192E20
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 17:26:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 659FA6E181;
	Wed, 25 Mar 2020 16:25:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD2FD6E181
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 16:25:58 +0000 (UTC)
IronPort-SDR: BG7sfQxriheX803W6jA9Lej8axOSC1YwPHv+qf3PLcHBXssM/8tmwm3oprFRZ6zAgxuyRtIHnO
 /nMoRXoeRe+g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 09:25:58 -0700
IronPort-SDR: 9ubEwN6z9f6irniC/50O2kAe92EKTGZHxV2CDBeDzNnkP+J5tMzQCxgrRk2EbJXOwEb07RrZwh
 N6nY2bs1lnmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,304,1580803200"; d="scan'208";a="282188702"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga002.fm.intel.com with ESMTP; 25 Mar 2020 09:25:56 -0700
To: Andi Shyti <andi.shyti@intel.com>
References: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
 <20200325014709.GC1682@intel.intel>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <6263082d-fdbe-653f-9dd1-7823faba69e1@intel.com>
Date: Wed, 25 Mar 2020 09:25:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200325014709.GC1682@intel.intel>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 0/6] Re-org uC debugfs files and move
 them under GT
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 3/24/20 6:47 PM, Andi Shyti wrote:
> Hi Daniele,
> 
> On Wed, Mar 11, 2020 at 06:16:25PM -0700, Daniele Ceraolo Spurio wrote:
>> Rebased on top of Andi's patch. Note that some discussion is still
>> ongoing on that patch.
>>
>> Also dropped the patch that caused a const->non-const conversion and
>> fixed a couple of bugs:
>> - keep printing HUC_STATUS register
>> - correcly set permissions for writable debugfs files
>>
>> Cc: Andi Shyti <andi.shyti@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>>
>> Andi Shyti (1):
>>    drm/i915/gt: allow setting generic data pointer
>>
>> Daniele Ceraolo Spurio (5):
>>    drm/i915/guc: drop stage_pool debugfs
>>    drm/i915/huc: make "support huc" reflect HW capabilities
>>    drm/i915/debugfs: move uC printers and update debugfs file names
>>    drm/i915/uc: Move uC debugfs to its own folder under GT
>>    drm/i915/uc: do not free err log on uc_fini
> 
> is this series getting in at some point or shall I take this
> series over?
> 

I've been waiting for a review of the changes on the GuC side (and I've 
already sent a ping twice). I'm ok if you want to take over and 
integrate these in your series in the meantime, just keep in mind that I 
might have to update them if there are negative comments.

Daniele

> Andi
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
