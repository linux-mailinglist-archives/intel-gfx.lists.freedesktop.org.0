Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B32A2AD9E77
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Jun 2025 19:19:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB0FD10E13C;
	Sat, 14 Jun 2025 17:19:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="E7/7CAy/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BFF210E586
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jun 2025 15:22:57 +0000 (UTC)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A8QDG0017891
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jun 2025 15:22:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 e114YZ488PyX5H8bdxjDah+KG/E0gP9d9huL6plo+H8=; b=E7/7CAy/wq7H5+zD
 WnX8GlFw5fc5XZz1GaHLYnYgQYBlw9d7t/vvCNU7Ata6F2W7hZH0G0VEIhquY2FU
 emqXoMl/Neq2Y2P20jr6UP58GPTSGEQTRyVhBaY40i64cCTKaKjFrJHksSQKQ/nh
 xmeey4Z9nUX7NnAxMu5mXnjcmyyWyz8a6KvpNTZEkc2y4kLsbhsNfJenKcheklFV
 Cct2stKsbtxIFebaJiPoNLcJ/samSt32ueGQbzbctSgy1KWp1/cUVNlu6Gq282+a
 rAE/hFxC+WZtaIK/orhKBpYxaK/7zm1dGI6A6AZsVLuLSV5qt12sqNh8Cjh6ewCF
 0wyToA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com
 [209.85.210.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4766mcjnth-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jun 2025 15:22:57 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id
 d2e1a72fcca58-7429fc0bfc8so5400552b3a.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jun 2025 08:22:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749568976; x=1750173776;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=e114YZ488PyX5H8bdxjDah+KG/E0gP9d9huL6plo+H8=;
 b=Rv+HYvCIsQWm0X3WEhlCd7MSmGHNIIj3UUlr6xVqfaakArp/pykYZ0gATJr8J3YOj6
 FHHFU1U3QsqavYavxjI+2TERHadpv4XvdiSUGuHEfJkL1WNJYdEJ2pnAezNH34EXDF10
 hoD2KgdAqBNr9O7bOrnffs/h01HxorANq9ObMZBoAMNrkEnLpa+N+P2IdJ/yPDBYKGqp
 Gq3LKmNvm5Cxnyyk710OT8PWiZQ+HdebDVWMsBVvpoCn3NXoRiVl8+NxFPRpgTB1mvRP
 c+Dh2SOJJ6nSjVPz9aebNeahqZNhDjTb2jncpajGWZn62rQw8Ss9RiLwVljZGog2iOZf
 w4uA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVVnmBPsLCOow2jSj6pIBvF/E/75SMbmWab1ZTbsGZfUBpr/Gkst3VpgPpGdl0PrcTFsO4bRRLqHBI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyTEYMRO+dToinVXjVWMbarQ+GtIb02pfPUuVsHDTE01LVtSMa9
 9lV38alBrTMA6JZ8DvjTwlD2oBVif5eokzNgXH/+einIR8dZJYJOJ/5H27FtAu18PelOIeFH0iv
 kDRzi6WBr24TvpvnNQ2lCFByJV3DVRmqtMGToVfcgjX1Bjhor4XUOJtfC4WMlUBCxznXBZ14=
X-Gm-Gg: ASbGnct65iAn4dxbLMGC/qJC88ZDeYYHj5h2rA2KnMTecN/Y+1U9mPE8GH2dN38biU+
 az+fiRw4KkxFRQdkar61aVCM8qildq5PmwTQQzda50XCHm5YW8FFPnVzapg69h3ToAOGqfl1VHa
 cX8R/iLFpHgCkAtbXjfcWie/FfqJMFwpiK3uJVvvmV7cqDOT/NBy8Jd/cbTZO5JQLqWd1PvNH1R
 Va0s2dVxiw1ZXFSRzJo0Ip0ObtThnZypKrRTNxpLdNwVfZzPdfpeTn+75UDdW39Fm1DYQ63f20v
 dsYcM0ZXRR6OkksYqJGiJTfYgbTzGH2V7MAlmU1AsVZji3Hr0n8tPrpuVKrW7etDTlDt5rzS
X-Received: by 2002:a05:6a20:6a05:b0:21a:cc71:2894 with SMTP id
 adf61e73a8af0-21f7696b725mr5956501637.17.1749568975830; 
 Tue, 10 Jun 2025 08:22:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRW9TAgrPxwCJk/o8eP9DoS0GIWBXXYaSbfoHboYL0uaKLdt5ZmSeDkSVqNYVQEjp5EHKv7w==
X-Received: by 2002:a05:6a20:6a05:b0:21a:cc71:2894 with SMTP id
 adf61e73a8af0-21f7696b725mr5956462637.17.1749568975426; 
 Tue, 10 Jun 2025 08:22:55 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7482af7aa6esm7780346b3a.59.2025.06.10.08.22.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Jun 2025 08:22:55 -0700 (PDT)
Message-ID: <c0bea584-10d1-4afa-a80d-594179f3a734@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 09:22:53 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: linux-next: semantic conflict between the drm-misc tree and
 Linus' tree
To: Lukas Wunner <lukas@wunner.de>, Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Simona Vetter <simona.vetter@ffwll.ch>,
 Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Krzysztof Wilczy??ski <kwilczynski@kernel.org>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
References: <20250610124809.1e1ff0cd@canb.auug.org.au>
 <aEeqkw670ZcuDdZO@wunner.de>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <aEeqkw670ZcuDdZO@wunner.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=T8KMT+KQ c=1 sm=1 tr=0 ts=68484dd1 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=Ho3n10bA_UD04d3nvKkA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: foeUboMJlbaDTWINnlc2GAU-9wsgt_tH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDEyMyBTYWx0ZWRfXzC8ZUgcPGde1
 CNphHFWNNd8s7Xsh7NZsztNOfGCNetqNrKrWk6JGl5Gm94Mokjt7H+97q7hlNdMku85GumqDZNk
 +z4Ca31TAeRVeOKLyXMgQPgOwdkX3ab24PYbaisK1OZSYNuWyjwi0J4qrR8F28Pwl1mlzqA8AH1
 fjlLumTI1eHjmSwiMsNWwMcSDNIpIGYaxLfldvITXjx1i9N5DDXCWMit0HeI73rElQ0GfK4qxgV
 Grzk3lQhVBVFqlf+Oky8MPlhbuFVjIkolTlXz1EfnoKVuIPf5wmaf7YM5XCs7pFOGeWrlilDi4a
 ATXKJcEgjNVKB2yenQqZdFAhR7HBiXoYEOMRKQucUblUcdSgcI1Ag55xLPm0+DOuhHWvKkHa2uN
 D02LxwwjG84Vj7P2hfMQ9uHyAgqriH6z7th9hhiXT+GLIbZI6oj65hz6yL3TYSju8cFKYOPV
X-Proofpoint-GUID: foeUboMJlbaDTWINnlc2GAU-9wsgt_tH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_07,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 clxscore=1011 malwarescore=0 impostorscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 mlxscore=0 phishscore=0
 mlxlogscore=999 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100123
X-Mailman-Approved-At: Sat, 14 Jun 2025 17:19:36 +0000
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

On 6/9/2025 9:46 PM, Lukas Wunner wrote:
> On Tue, Jun 10, 2025 at 12:48:09PM +1000, Stephen Rothwell wrote:
>> After merging the drm-misc tree, today's linux-next build (x86_64
>> allmodconfig) failed like this:
>>
>> drivers/accel/qaic/qaic_ras.c: In function 'decode_ras_msg':
>> drivers/accel/qaic/qaic_ras.c:325:17: error: implicit declaration of function 'pci_printk'; did you mean 'pci_intx'? [-Wimplicit-function-declaration]
>>    325 |                 pci_printk(level, qdev->pdev, "RAS event.\nClass:%s\nDescription:%s %s %s\nError Threshold for this report %d\nSyndrome:\n    0x%llx\n    0x%llx\n    0x%llx\n    0x%llx\n    0x%llx\n    0x%llx\n    0x%llx\n    0x%llx\n",
>>        |                 ^~~~~~~~~~
>>        |                 pci_intx
>>
>> Caused by commit
>>
>>    c11a50b170e7 ("accel/qaic: Add Reliability, Accessibility, Serviceability (RAS)")
>>
>> interacting with commit
>>
>>    1c8a0ed2043c ("PCI: Remove unused pci_printk()")
>>
>> from Linus' tree (in v6.16-rc1).
>>
>> As a fix up patch would be a bit of a mess, I have used the drm-misc
>> tree from next-20250606 for today.
> 
> The simplest fix is to use dev_printk() and replace qdev->pdev with
> &qdev->pdev->dev.

Ick. I agree, this is the quick fix. I'll implement it and try to get 
-next unblocked ASAP.

> The PCI core already contains one occurrence of dev_printk() in
> drivers/pci/tlp.c (introduced this cycle - 82013ff394ea).
> 
> Additionally drivers/pci/aer.c goes so far as to define a custom
> aer_printk() for lack of a pci_printk().
> 
> drivers/pci/controller/dwc/pcie-tegra194.c contains further
> occurrences of dev_printk() which could use pci_printk() instead.
> 
> Those occurrences suggest that the removal of pci_printk() was
> perhaps uncalled for.
> 
> Thanks,
> 
> Lukas

