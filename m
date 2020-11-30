Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E892C8D3A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 19:50:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FCA889B0C;
	Mon, 30 Nov 2020 18:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BFF189B0C
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 18:49:58 +0000 (UTC)
IronPort-SDR: wwsGeaqXWWF1d8kerhMlQJYCw7Rdq3FBsrUNamg4npkLVtCbB2Zp5wghmRt1Vs2ocBMl7vrtY8
 ctOvqFTRVzbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="159743769"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="159743769"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 10:49:57 -0800
IronPort-SDR: FR9J5XZ5jmoNvg/DfiW0e4g1W3GQPtW5kcS6xh4hoC5+mjJtPVCoqi8Z4IswT2qpn6hlAjJ2CB
 mwWSOVEdydrA==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="549218094"
Received: from johnharr-mobl1.amr.corp.intel.com (HELO [10.212.134.54])
 ([10.212.134.54])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 10:49:57 -0800
To: Josh Boyer <jwboyer@kernel.org>
References: <20201125014214.3772152-1-John.C.Harrison@Intel.com>
 <CA+5PVA5n3C3fzTrLWLAmjqdjnVzxN2ae+fZDRS5Qbqj3UG+iKw@mail.gmail.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <c0aa4cb2-1374-b90f-e7cc-88bfb17ce04b@intel.com>
Date: Mon, 30 Nov 2020 10:49:56 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CA+5PVA5n3C3fzTrLWLAmjqdjnVzxN2ae+fZDRS5Qbqj3UG+iKw@mail.gmail.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] linux firmware PR for i915 GuC v49.0.1
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kyle McMartin <kyle@kernel.org>, Ben Hutchings <ben@decadent.org.uk>,
 Linux Firmware <linux-firmware@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/30/2020 06:26, Josh Boyer wrote:
> On Tue, Nov 24, 2020 at 8:42 PM <John.C.Harrison@intel.com> wrote:
>> Hi Josh, Kyle, Ben,
>>
>> Kindly add the below i915 changes to linux-firmware.git:
>>
>>
>> The following changes since commit b362fd4cb8963ad75517dbcf424974f65a29a60e:
>>
>>    Mellanox: Add new mlxsw_spectrum firmware xx.2008.2018 (2020-11-24 09:55:03 -0500)
>>
>> are available in the Git repository at:
>>
>>    git://anongit.freedesktop.org/drm/drm-firmware FDO/guc_v49
> This doesn't exist.  Git complains with:
>
> fatal: couldn't find remote ref FDO/guc_v49
>
> Did you just mean guc_v49?
>
> josh
I guess. The FDO part is the name of the remote repo in my local .git. 
When I tried to create the pull request without that part it gave me an 
error.

Do you need me to resend the email with the 'FDO/' part dropped?

Thanks,
John.



>
>> for you to fetch changes up to c487f7dadcd21116613441ed355b764003b3f57b:
>>
>>    i915: Add GuC firmware v49.0.1 for all platforms (2020-11-24 17:04:17 -0800)
>>
>> ----------------------------------------------------------------
>> John Harrison (2):
>>        i915: Remove duplicate KBL DMC entry
>>        i915: Add GuC firmware v49.0.1 for all platforms
>>
>>   WHENCE                  |  25 ++++++++++++++++++++++++-
>>   i915/bxt_guc_49.0.1.bin | Bin 0 -> 196224 bytes
>>   i915/cml_guc_49.0.1.bin | Bin 0 -> 197184 bytes
>>   i915/ehl_guc_49.0.1.bin | Bin 0 -> 324160 bytes
>>   i915/glk_guc_49.0.1.bin | Bin 0 -> 196672 bytes
>>   i915/icl_guc_49.0.1.bin | Bin 0 -> 324160 bytes
>>   i915/kbl_guc_49.0.1.bin | Bin 0 -> 197184 bytes
>>   i915/skl_guc_49.0.1.bin | Bin 0 -> 196288 bytes
>>   i915/tgl_guc_49.0.1.bin | Bin 0 -> 321792 bytes
>>   9 files changed, 24 insertions(+), 1 deletion(-)
>>   create mode 100644 i915/bxt_guc_49.0.1.bin
>>   create mode 100644 i915/cml_guc_49.0.1.bin
>>   create mode 100644 i915/ehl_guc_49.0.1.bin
>>   create mode 100644 i915/glk_guc_49.0.1.bin
>>   create mode 100644 i915/icl_guc_49.0.1.bin
>>   create mode 100644 i915/kbl_guc_49.0.1.bin
>>   create mode 100644 i915/skl_guc_49.0.1.bin
>>   create mode 100644 i915/tgl_guc_49.0.1.bin

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
