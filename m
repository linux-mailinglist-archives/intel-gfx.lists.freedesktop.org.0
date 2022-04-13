Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C44D24FF547
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 12:55:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1765210E180;
	Wed, 13 Apr 2022 10:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 399 seconds by postgrey-1.36 at gabe;
 Wed, 13 Apr 2022 10:55:02 UTC
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E6FA10E180
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 10:55:02 +0000 (UTC)
Received: from [192.168.50.139] (mobile-user-c1d2e4-239.dhcp.inet.fi
 [193.210.228.239])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 8960D3F341; 
 Wed, 13 Apr 2022 10:48:21 +0000 (UTC)
Message-ID: <e90b14fc-ad86-6687-956c-5d413e1032f9@ubuntu.com>
Date: Wed, 13 Apr 2022 13:48:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <2ebce4dd176208e368ba13d0c2f3d4591bf230e9.camel@intel.com>
From: Timo Aaltonen <tjaalton@ubuntu.com>
In-Reply-To: <2ebce4dd176208e368ba13d0c2f3d4591bf230e9.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Tolakanahalli Pradeep, Madhumitha kirjoitti 23.3.2022 klo 20.23:
> The following changes since commit
> 681281e49fb6778831370e5d94e6e1d97f0752d6:
> 
>    amdgpu: update PSP 13.0.8 firmware (2022-03-18 07:35:54 -0400)
> 
> are available in the Git repository at:
> 
>    git://anongit.freedesktop.org/drm/drm-firmware dg2_dmc_v2.06
> 
> for you to fetch changes up to
> ecc28070ea5edd4733b78550326c1d56858181af:
> 
>    i915: Add DMC v2.06 for DG2 (2022-03-23 11:15:12 -0700)
> 
> ----------------------------------------------------------------
> Madhumitha Tolakanahalli Pradeep (1):
>        i915: Add DMC v2.06 for DG2
> 
>   WHENCE                   |   3 +++
>   i915/dg2_dmc_ver2_06.bin | Bin 0 -> 22416 bytes
>   2 files changed, 3 insertions(+)
>   create mode 100644 i915/dg2_dmc_ver2_06.bin
> 

Hi, when will this be sent upstream?


-- 
t
