Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9FA5170F2
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 15:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BA5B10EF2F;
	Mon,  2 May 2022 13:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E08310EF2F
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 13:51:34 +0000 (UTC)
Received: from [192.168.50.139] (mobile-user-c1d2eb-82.dhcp.inet.fi
 [193.210.235.82])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 4E1C04162F; 
 Mon,  2 May 2022 13:51:32 +0000 (UTC)
Message-ID: <0057d5a0-9c71-5d53-d102-ce49f2ab5c15@ubuntu.com>
Date: Mon, 2 May 2022 16:51:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
From: Timo Aaltonen <tjaalton@ubuntu.com>
To: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 anusha.srivatsa@intel.com
References: <2ebce4dd176208e368ba13d0c2f3d4591bf230e9.camel@intel.com>
 <e90b14fc-ad86-6687-956c-5d413e1032f9@ubuntu.com>
In-Reply-To: <e90b14fc-ad86-6687-956c-5d413e1032f9@ubuntu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [CI] PR for DG2 DMC v2.06
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

Timo Aaltonen kirjoitti 13.4.2022 klo 13.48:
> Tolakanahalli Pradeep, Madhumitha kirjoitti 23.3.2022 klo 20.23:
>> The following changes since commit
>> 681281e49fb6778831370e5d94e6e1d97f0752d6:
>>
>>    amdgpu: update PSP 13.0.8 firmware (2022-03-18 07:35:54 -0400)
>>
>> are available in the Git repository at:
>>
>>    git://anongit.freedesktop.org/drm/drm-firmware dg2_dmc_v2.06
>>
>> for you to fetch changes up to
>> ecc28070ea5edd4733b78550326c1d56858181af:
>>
>>    i915: Add DMC v2.06 for DG2 (2022-03-23 11:15:12 -0700)
>>
>> ----------------------------------------------------------------
>> Madhumitha Tolakanahalli Pradeep (1):
>>        i915: Add DMC v2.06 for DG2
>>
>>   WHENCE                   |   3 +++
>>   i915/dg2_dmc_ver2_06.bin | Bin 0 -> 22416 bytes
>>   2 files changed, 3 insertions(+)
>>   create mode 100644 i915/dg2_dmc_ver2_06.bin
>>
> 
> Hi, when will this be sent upstream?
> 
> 

Ping? GuC got applied there, what's blocking DMC for DG2?



-- 
t
