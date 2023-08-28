Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F1978BA6D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 23:45:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F20110E0F3;
	Mon, 28 Aug 2023 21:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95CC710E0F3
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 21:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693259150; x=1724795150;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=3Z2keJknhJT0WEXAlVqAgpP5Jb+wJzqqWYTSfDRX/NY=;
 b=a5eWz0apI8vNlUdN5oLlbCYkj9PBY0dy+aK+UdZ+NfxOj0PUPII6jRAg
 DjxnLYXJ17HDP+Pi7dA9XdaYnOS/NHjwdklzGAMvoUFExntkkya/teSlu
 sigZI4HiAnlWNMuQK58WMaphm/+UnJ3wUvVMOGl9JGW1wuWdiMyfBwSjS
 j2F6mcEabhiJglCKpTRlMHxd4cd4Tyll1uGRYYVvFEetLDzro/KLZpbTC
 uVMpDElNACOr3CFzmFJqbQf7DtivyEFaD82Kjvx+6lipNIseiGlkbsVOh
 OAXq3MaFwmmEKENz2EcVcAOCSMDTqQ9/6pCffGWFWuh48F3wydU/L58kT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="377939859"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="377939859"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 14:45:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="767831286"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="767831286"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 28 Aug 2023 14:45:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 14:45:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 14:45:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 14:45:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 14:45:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LqnTPQIiQ11U+O5Mj+imCL2BWw7hkSL7DGTRfduDaMav0WDfPDKhZrWCeTUSMMdVDyJ5cFn724wGTG4ekcPNTe8DFppDs2xuMBXKiiBFNFoqAcPMoQepEE5DN0vmD8XJMPM8sAtk1Dmdkv3m3uFWM0E9+dgkUps66La9YAgXRDMc5Tlz3T6fuJwIW59AEU2gIv2VNp4nNIBJUZZdmObmXUQrogPjVjlFd+qPnWXYae0P8rRlHXKWSEVGyq3AOFMCZNLKmWcC7Rc/lnUEE5/EpgT/Tll/8MKQegqvSU9F3uOiOl7XQ42+YsJt6ldovHSKYk5DBGhlmSe1z40Ciij/7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CqNg6Xmgh80o8FgvLkLsgxJ9zyIy2C3S+2C2rTJZ5Yo=;
 b=WhMLoKVgpyxuydMy++0MIuc98UKL9meh9gACUaAVYnCRnejxCKomtqo5c03C2NfyZm+n8sshAOCY+TG1vzjVrLI5bRKa3hGOsQZdbVrCYPBQ4QFcdAFDBoAKQ0vNcxOZshDhMLLdlk4BCe9YbPqegdUGeSsR+qMorj0EuWHsmDP5+IbTSKQtbU7ovbOEnaSMWqMVxVX9EXFEt9v70/QXLRD1ZlpaaBS4UHJyX7FE56zX71HSs4X7+7OLTuHzGwzxM5uF33P1v/fYyJevUB0s05gYNNB1XW0eLe0mkyQMzdrvuB02cnZ5EIx3RiGIQdLZ3xNrvcwob0X1UWesPWTvuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH7PR11MB8552.namprd11.prod.outlook.com (2603:10b6:510:2fe::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 21:45:43 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 21:45:43 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <DM4PR11MB597193DFDCC38D7E92C9CFC187E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230828173405.59812-1-gustavo.sousa@intel.com>
 <DM4PR11MB597193DFDCC38D7E92C9CFC187E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Mon, 28 Aug 2023 18:45:36 -0300
Message-ID: <169325913612.6737.8521384979789302140@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR20CA0033.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::46) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH7PR11MB8552:EE_
X-MS-Office365-Filtering-Correlation-Id: cad60e69-162e-4e00-5e32-08dba81020a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JHDvYzRVzYfysWnBAF/4qGxKyXN7doa//G5OgkeKfTSeExznyNpPWGFlmd88AB7tjsneJsLZ3xt+t1Jh9HGQQ3cDPXHasvuj/t7Bk2TlsGrfyuULJFe2/D7l/XMJLVwRzoeKwp0iEK8mGYGkoPPcKpxxV7WD7ohaTzjgp+U4+ljfyATuKRKzBf1YhVhLrKvLK/JAM5Nga7rfN5XGL0gkxKryyFbTSIj6hL5ndNfdIvfJe9LAXqqY6iOCrTGT2T1FQz4dSIU5uPWHgckdPIVPqWXRlne2eEtgZm8Mja2T6LCS7uZAgH/AOZTY90ibnbtKjCFsD4XCytiw5Jsd/i6vw8icRp1a4c/zMFEFuy4d+rqmFc2tjZC633vgngNsnkvRtn0gYIgBHxmcJnQNrDLphbAJQRQ2vuLeWFp/jTls4K4BXGKWYix7EDYBlWhhXNa9mFhVSLZ/jAGJ9gDV8BYc+0NHyzUyf5YSo3EhPDBkc3d9KbqnFsjV9qjc8/tov/Ci5xObF6lTDBnDwj9TnA65FmwI6wmNFhk7RpRI4K0gcRpEYETWFHBsKu/MOA4qbyUE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(366004)(346002)(376002)(39860400002)(136003)(451199024)(186009)(1800799009)(6506007)(6486002)(6666004)(5660300002)(86362001)(38100700002)(82960400001)(66556008)(2906002)(83380400001)(478600001)(53546011)(9686003)(26005)(66946007)(8676002)(8936002)(33716001)(66476007)(6512007)(41300700001)(316002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmtYK29GRXNnZW1rSzBiU0toNENKSEIyMXU1MDVCRHVEeXBCYXRHVXVyV1V2?=
 =?utf-8?B?d3FaY2hzTlBlMUIvTjZUZkxicmtMRFlMaDRUdUxYSHZEdWgxQi9VV3hubm1P?=
 =?utf-8?B?OVFNYi9xMW5XcDBQOTUxVWpPS0Jlb3RkQTZnMmV4bENvQmhiRDhXWFA4amNl?=
 =?utf-8?B?Snl4VkhOVjNLMnhoSjZxOFZBY201L0FGN3R4OHFyVjZKWmlDcFBPUlhlMVNz?=
 =?utf-8?B?N1hBZysza1oxdkUxUjR1TSt5VXBlUFNPazZuaitsa0Qvc1djTEora0pLd3Rq?=
 =?utf-8?B?bXRDb08za0ZVVVV6MjZhVitvQXQzRWJxMTlIWHd3UkZucC9NcExTQ2lVNUNu?=
 =?utf-8?B?UFFNRGs4M1kyTHVHODZ4bEVydUI5bm9GeE9MRFFaZS9ubmZaUTdWY3A2N3Rl?=
 =?utf-8?B?WktlM0VLWXNDa3Fqc2NSMkw3OTJVaWpGK2hPWnY5dG9tbERBRzJIRDAyZzBF?=
 =?utf-8?B?ckUrWFQrMjFCcEFXcHJVR2JOMTd6aFcxNFlYYUJVVHZac0R5UlE2eWZpRXEv?=
 =?utf-8?B?KzBIbGNEUnFIb0xXRS9Mc3lTajgrSlZYWXZRWS9tRXAvQU1adTlvZ0JPT2ds?=
 =?utf-8?B?UmVJN2hXbVdKQWs5bUcyWGlaSU5sVDBaYTJUWGIvUzZXN1hlV3hhTEhGNkpD?=
 =?utf-8?B?T2dRVE10L0xLQlh5VDcrYmhLWk5NNWp0VDhOZmtGT1JzOUUyVmxSMlVCcXN1?=
 =?utf-8?B?MktwM3Q2MTFsOEZNSW1vejkvWFo4Mnoxb05GNXBpVmJpaWdZcEE0Zituc3VC?=
 =?utf-8?B?aFJGM3BPbU04UFZOU2NzZjQxTTdudVlEMEt3WVlPbDJBSHZoeXZ6NUJJbnpN?=
 =?utf-8?B?ekhMbTBlQWN1aW9zV2ZLU1Z6bWo1dTVUNUtFa3M3VFNpR2tmR1RmNlNUOGVG?=
 =?utf-8?B?U1ZqOUFickVGVExTTVUyalpOTTZKWlNNUkJxVzRRYWJTc3VXc2s2dXB3Snhl?=
 =?utf-8?B?eTJkUTVpWFMwN3lZaVVqVVdRMHA0ay84REF5SkppUUwwZFUvdkc3WGxFYjZt?=
 =?utf-8?B?dHJVdEtRcTdlMmxDU3JPYmIzTDNZZGV5TWJBVGVnNGc1MjRuZFFmdXhTYkt5?=
 =?utf-8?B?NEVKWUIxdGI1aFN2QjZ2Z0prUXZGU0kwY0ZkeXJUZWhUcDE1M2trVHI4YUlR?=
 =?utf-8?B?Wm1teHZqNVdFMkFtYyttNWNvSnU2SkdjNkxwUnUzd2dBWlY4U1cvOExhemJO?=
 =?utf-8?B?b2FSVEhMeDRBbXVYa3JBeHFVaUhkczNkeUFpbUZ2STlYbWFMNmErbmZzcnF5?=
 =?utf-8?B?SWo0MVIwdnYwbEJxZW5xM1cxcENhdU5wbVVLUCtneHFSNnYxRGMxWkFmellz?=
 =?utf-8?B?YVpXUDE2RHlDVjVITnVnMzNrY2ZJUzV3Yys0SHk4azFGa2hOZWVFN3A2KzJv?=
 =?utf-8?B?Z2NXRk4vTTh6bU16bkJxZmc3ZVhVbTdaY2RtWjhnbSs2T0RjZzNiWmEvb0Ry?=
 =?utf-8?B?N3dtUS9qSmt3R3c3V1JQdCtCditGL2wxVXdoSHptRjMvbnl0dG9CRWVNTEQ3?=
 =?utf-8?B?TXZOcXAwbDdBTWF0ckY2ZTlDVVAzbC9aRHRtNnRQcnpHZk9mZENiVGxjaHVr?=
 =?utf-8?B?M2hoZXZiekF6S1RpamEyRXRSVHdOZ0hyNWQ2YW5pRDFSRkw4c0JHYk42WUNH?=
 =?utf-8?B?b1Ard2IyMjJmSTZycWUzREZuNDJxUFZsUThiRzJBbi94eEpZNmxSbVhWMEpZ?=
 =?utf-8?B?cGtzQXFFd0FFSEljaWdVenlERVlINVYrc3owMVh0aTJaZ3ZxWG9NZFRwOGRF?=
 =?utf-8?B?VktIdzNkbGwxRDYzK1B2TStiMnNVOWtjK2EvWkpZc0creUVJMzhlRE1TRzQ3?=
 =?utf-8?B?bGtrbkFqVStaQk5SSlA4NGhnL1lPeUdKN1ZWVkVFUGQ2TXpRblNGQWZXU2JC?=
 =?utf-8?B?Qzh5WlJNUk02aFlEUXhhS2FJOElhbWhBb3hqUm4zRmVTVHlIbUMwVVByQnFV?=
 =?utf-8?B?eGJycmoyM0c5enBjQkExWFo3OFkvdENlemp0QlM2MTFDMnJSMitqUmRSejJy?=
 =?utf-8?B?TWQ0NlpGM1RyajE5amh6RWZiNU02aUt1Q3JzaG5ISkYvNmh1a256T2hveE9D?=
 =?utf-8?B?YStmd3ZNKzAxbDB3N0tlOWVZc2loQ0NqcTdPWEF5YkFFSDJiNEVnZEw1cGVt?=
 =?utf-8?B?cUNWeGMrcU40L1dKOUlOTzdldXhxMkNrSlJuTFJ5SG4walhlZ0l3Zk51Ulky?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cad60e69-162e-4e00-5e32-08dba81020a5
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2023 21:45:43.3562 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /g4cePCoL9L+R14SKzMYHyijeh4U0SvJ2t4QdzepBx8Qaaxznajza4Kdjs7Vg5bmyq9migfgzKPzG0NDggUP7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8552
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus
 timeout threshold
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

Quoting Sripada, Radhakrishna (2023-08-28 17:30:19-03:00)
>Hi Gustavo,

Hi, RK.

Thanks for the feedback! Please, see my replies below.

>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of G=
ustavo
>> Sousa
>> Sent: Monday, August 28, 2023 10:34 AM
>> To: intel-gfx@lists.freedesktop.org
>> Subject: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus tim=
eout
>> threshold
>>=20
>> We have experienced timeout issues when accessing C20 SRAM registers.
>This wording is misleading. It seems to imply that we directly access SRAM
>registers via msg bus but the reads/writes go through intermediate registe=
rs
>and it is this read/write that is failing. Adding extra clarity here would=
 be helpful.

Hm... Okay. I thought that would already be implied to someone familiar wit=
h the
code. What about:

    s/when accessing/when going through the sequence to access/

?

>=20
>> Experimentation showed that bumping the message bus timer threshold
>> helped on getting display Type-C connection on the C20 PHY to work.
>>=20
>> While the timeout is still under investigation with the HW team, having
>> logic to allow forward progress (with the proper warnings) seems useful.
>> Thus, let's bump the threshold when a timeout is detected.
>>=20
>> The maximum value of 0x200 pclk cycles was somewhat arbitrary - 2x the
>> default value. That value was successfully tested on real hardware that
>> was displaying timeouts otherwise.=20
>>=20
>> BSpec: 65156
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 41 +++++++++++++++++++
>>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 12 ++++++
>>  2 files changed, 53 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> index dd489b50ad60..55d2333032e3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -5,6 +5,7 @@
>>=20
>>  #include <linux/log2.h>
>>  #include <linux/math64.h>
>> +#include <linux/minmax.h>
>>  #include "i915_reg.h"
>>  #include "intel_cx0_phy.h"
>>  #include "intel_cx0_phy_regs.h"
>> @@ -29,6 +30,8 @@
>>  #define INTEL_CX0_LANE1                BIT(1)
>>  #define INTEL_CX0_BOTH_LANES        (INTEL_CX0_LANE1 |
>> INTEL_CX0_LANE0)
>>=20
>> +#define INTEL_CX0_MSGBUS_TIMER_VAL_MAX        0x200
>> +
>>  bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
>>  {
>>          if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0) && phy < PHY_C)
>> @@ -119,6 +122,43 @@ static void intel_cx0_bus_reset(struct drm_i915_pri=
vate
>> *i915, enum port port, i
>>          intel_clear_response_ready_flag(i915, port, lane);
>>  }
>>=20
>> +/*
>> + * Check if there was a timeout detected by the hardware in the message=
 bus
>> + * and bump the threshold if so.
>> + */
>> +static void intel_cx0_bus_check_and_bump_timer(struct drm_i915_private
>> *i915,
>> +                                               enum port port, int lane=
)
>> +{
>> +        enum phy phy =3D intel_port_to_phy(i915, port);
>> +        i915_reg_t reg;
>> +        u32 val;
>> +        u32 timer_val;
>> +
>> +        reg =3D XELPDP_PORT_MSGBUS_TIMER(port, lane);
>> +        val =3D intel_de_read(i915, reg);
>> +
>> +        if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
>> +                drm_warn(&i915->drm,
>> +                         "PHY %c lane %d: hardware did not detect a
>> timeout\n",
>> +                         phy_name(phy), lane);
>> +                return;
>> +        }
>> +
>> +        timer_val =3D
>> REG_FIELD_GET(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val);
>> +
>> +        if (timer_val =3D=3D INTEL_CX0_MSGBUS_TIMER_VAL_MAX)
>> +                return;
>> +
>> +        timer_val =3D min(2 * timer_val,
>> (u32)INTEL_CX0_MSGBUS_TIMER_VAL_MAX);
>     ^ is this cast necessary?

Yes. I remember getting a warning without it. Let me remove it to remember.=
..

...done! I think it complains because the arguments are of different types:

    In file included from drivers/gpu/drm/i915/display/intel_cx0_phy.c:8:
    drivers/gpu/drm/i915/display/intel_cx0_phy.c: In function =E2=80=98inte=
l_cx0_bus_check_and_bump_timer=E2=80=99:
    ./include/linux/minmax.h:20:35: error: comparison of distinct pointer t=
ypes lacks a cast [-Werror]
       20 |         (!!(sizeof((typeof(x) *)1 =3D=3D (typeof(y) *)1)))
          |                                   ^~
    ./include/linux/minmax.h:26:18: note: in expansion of macro =E2=80=98__=
typecheck=E2=80=99
       26 |                 (__typecheck(x, y) && __no_side_effects(x, y))
          |                  ^~~~~~~~~~~
    ./include/linux/minmax.h:36:31: note: in expansion of macro =E2=80=98__=
safe_cmp=E2=80=99
       36 |         __builtin_choose_expr(__safe_cmp(x, y), \
          |                               ^~~~~~~~~~
    ./include/linux/minmax.h:67:25: note: in expansion of macro =E2=80=98__=
careful_cmp=E2=80=99
       67 | #define min(x, y)       __careful_cmp(x, y, <)
          |                         ^~~~~~~~~~~~~
    drivers/gpu/drm/i915/display/intel_cx0_phy.c:152:21: note: in expansion=
 of macro =E2=80=98min=E2=80=99
      152 |         timer_val =3D min(2 * timer_val, INTEL_CX0_MSGBUS_TIMER=
_VAL_MAX);
          |

>
>> +        val &=3D ~XELPDP_PORT_MSGBUS_TIMER_VAL_MASK;
>> +        val |=3D REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
>> timer_val);
>We do not use REG_FIELD_PREP in the function. Instead we use it in
>register definition in intel_cx0_phy_regs.h.

I think it makes sense have definitions using REG_FIELD_PREP() in header fi=
les
and use those definitions in .c files for fields whose values are are
enumerated.

Now, for fields without enumeration, like this one in discussion, I think i=
t is
fine to use REG_FIELD_PREP() directly. The MASK is already exposed anyway..=
.

Besides, it seems we already have lines of code in *.c files using the patt=
ern
above:

    git grep REG_FIELD_PREP drm-tip/drm-tip -- ':/drivers/gpu/drm/i915/**/*=
.c'

Let me know what you think. I could add a XELPDP_PORT_MSGBUS_TIMER_VAL() ma=
cro
if you think it is necessary. My personal take is that using REG_FIELD_PREP=
()
for this case is fine.

--
Gustavo Sousa

>
>Thanks,
>Radhakrishna Sripada
>
>> +
>> +        drm_dbg_kms(&i915->drm,
>> +                    "PHY %c lane %d: increasing msgbus timer threshold =
to
>> %#x\n",
>> +                    phy_name(phy), lane, timer_val);
>> +        intel_de_write(i915, reg, val);
>> +}
>> +
>>  static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum p=
ort port,
>>                                    int command, int lane, u32 *val)
>>  {
>> @@ -132,6 +172,7 @@ static int intel_cx0_wait_for_ack(struct
>> drm_i915_private *i915, enum port port,
>>                                           XELPDP_MSGBUS_TIMEOUT_SLOW,
>> val)) {
>>                  drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for
>> message ACK. Status: 0x%x\n",
>>                              phy_name(phy), *val);
>> +                intel_cx0_bus_check_and_bump_timer(i915, port, lane);
>>                  intel_cx0_bus_reset(i915, port, lane);
>>                  return -ETIMEDOUT;
>>          }
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> index cb5d1be2ba19..17cc3385aabb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> @@ -110,6 +110,18 @@
>>  #define   CX0_P4PG_STATE_DISABLE                        0xC
>>  #define   CX0_P2_STATE_RESET                                0x2
>>=20
>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_A
>>         0x640d8
>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_B
>>         0x641d8
>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1                0x16f258
>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2                0x16f458
>> +#define XELPDP_PORT_MSGBUS_TIMER(port, lane)
>>         _MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>> +
>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_A, \
>> +
>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_B, \
>> +
>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1, \
>> +
>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
>> +#define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT                REG_BIT(31)
>> +#define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK
>>         REG_GENMASK(23, 0)
>> +
>>  #define _XELPDP_PORT_CLOCK_CTL_A                        0x640E0
>>  #define _XELPDP_PORT_CLOCK_CTL_B                        0x641E0
>>  #define _XELPDP_PORT_CLOCK_CTL_USBC1                        0x16F260
>> --
>> 2.41.0
>
