Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JMpCsunlWlVTAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 12:51:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4951561BF
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 12:51:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBDFA10E5AC;
	Wed, 18 Feb 2026 11:51:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NAOAkjzL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4009710E5AC;
 Wed, 18 Feb 2026 11:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771415496; x=1802951496;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HM8zsufMdEkHFm2EpXzAuqoaAtSA2fE8KRGYHUj0Sl8=;
 b=NAOAkjzLTco3qeRh0lEv/vPjRsAyhIXAWa6wkhel7mfyM5Ynuic2u6lI
 /6r2texs05zIvOYNEGGjkwSP31+u0PgvLfFxrwFL/1XtTydlA9uy9/xgL
 yyq0uf4iys84xpztNgMPpysn5jOTJPEHA+dMIS21zmBBV1hH00ef977Ka
 Q34sJJEetvi+2FwZWbkUebocr9NF435KLV/RHoBE497aDFgU1vi2x+yV8
 v0UnpZjnDpWFoIAgqBWDSncpvQwRv+sx39V5/qAgiksqgbaguI//N9VBi
 8bLRLDwWUg3eHsjxdRN+SmStbik6UWt6UNnR+jAwuq+3x/2reiSN70Cr9 A==;
X-CSE-ConnectionGUID: jgXcCTsKTZaPPQk8J1mOIg==
X-CSE-MsgGUID: JU9u0eBJQ+qS/jk8hc4GfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="72378222"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="72378222"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 03:51:35 -0800
X-CSE-ConnectionGUID: HOTfSzeUTgmyWu6zB7IeJA==
X-CSE-MsgGUID: vRWbWwcXSu+k2YrOnFNlaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="218702132"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 03:51:34 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 03:51:34 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 03:51:34 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.16) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 03:51:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ecl5ygdb7WMC1tURW0WAU7sphoyXpcACBHvyO78aFxPVdkM/KYnqhq765RfPsUAJm2Al0dnq92faPsPnUgnZDtVNeRPkJ9EiFOcfJUTxC1zdoCc3LLXsvLRku/cx7Ueib44keibqJbSEkxIogG2hI6lIsVfpXA35DyAosU3rTxEtf9936PEjTZPVRYexlZ6CMutlo6BkONPXePOZg2pSiF8Li5ZNUqDHYNvmhMxzA7RFzfNvwN/tWvcqOCG0mmCUkBUeyk6QXRIdnA7Hl7AHGzO3fwImNIBJVfhU5DntV4KQWLUH5i9c1dLVQavcLGRNgOK69BpFAK/IrLS2XMkSIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vnuuqLxAavupfdCyVkThEgPp0Z9XkRdwXDQRr+7PUeY=;
 b=xCJAQA1hNSqKUVKiVn0tYEqCcZ3JYCILFhE1zAbGZA8rX7r+lA5Q/kJKP1UveqY/Iih4q5RgjQU4JIf5hWUloK8HGV8v73XMbeaSBp7cZDnJYZWoMIQGOZRX3mzOk5SvSTMf+4b3ZnLkYt4rqZFMnc/m0HPtGgcCU+U7ivShm6nJC2p3Pr1mLn6tdCFUT/WBaP188WAiAyGC0ZL038kCBoJGAQaDu/TRB2mae9KxJnzXbLsjlb8/lFsL99n+trfvo+Ddb3XY8tPGDJQPC3xqcU31PLGBXMUMOzDxnIpMZE90INBPkSOFBprpUF8tCNvfjynA4vZa153/54CQn4pYOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6746.namprd11.prod.outlook.com (2603:10b6:510:1b4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 18 Feb
 2026 11:51:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9611.013; Wed, 18 Feb 2026
 11:51:26 +0000
Message-ID: <933c3344-e7d7-40ad-a6af-4642a1522944@intel.com>
Date: Wed, 18 Feb 2026 17:21:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dp_mst: Fix ww mutex lock failure in
 for_each_joiner_candidate() loop
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260218105708.845161-1-imre.deak@intel.com>
 <20260218105708.845161-2-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260218105708.845161-2-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0115.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a7::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6746:EE_
X-MS-Office365-Filtering-Correlation-Id: c0f80638-cb01-494e-2ad7-08de6ee40bf8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WHNEcTBTL0tXbk9oZzlRZTBUdithNUtDZ0xSNVJpMnVqVG56TFJpbDlBV0lr?=
 =?utf-8?B?KzNwZlBUOFpXTFRhclF1S082SXN1bU05NkNLanRHQ0RndHpmRldDYjltWFJL?=
 =?utf-8?B?MTE4Q3duZmJianU0bTVuVmVSRnR2TUowZWNTS0JkWlNaNGNnQ3JmSDhua2dC?=
 =?utf-8?B?K2hNVWVWSzRLRnFuOVNyWDN0MFJmQTgzcDY2Mk84OHRUR1BPQU9yM09CUnYv?=
 =?utf-8?B?dmZHTTQwSnFML2tUT2lHM0sxSGd3WGlnT01oalRZRitPbUoxQ1hOdFVXWWZ0?=
 =?utf-8?B?UDVvcWQreXorREtaWTdxQ2QvcktzR0JzYlQwRVQwaThld1FtWHVFZHk1MUo4?=
 =?utf-8?B?ZWQ0ZmJwSVdEMnhYbUkwNDZ1b29udC9HRks1dHBrVnQySFZBQjZjZ2lDZDJR?=
 =?utf-8?B?dStRc3diWFNhZ2NKb29qVjN2YUl0MVJ5YWVheXk3ejc0MUJJTnBjc0dHUXQ5?=
 =?utf-8?B?Vzl4aUFXeUNtck5DbG1lNHdsT2ROVG1IOEZ1N2JkYXRGaGxkTVphZmZwNzVj?=
 =?utf-8?B?aXl0L29pNDYrM1JVbGd0N2dGVGJQazZQYWNLckxnNnpBRFNiUTBON1IzSTZx?=
 =?utf-8?B?K0pObnhqOFlMM3M2VHprUE9WRTRTNmI4SWsyT09lcDdIMjB1a1NtcnY3UXNF?=
 =?utf-8?B?bmFhdmJkKzdpa1dEK1dHT1NpaWdHNGpuVzN1dmZ1T2ViN1pleFg4Nm1TQ29w?=
 =?utf-8?B?eHFKbzZIUmRRb0N0S0t3b2M5UXdaZGlyRk9wOVpIcjVBdU5UOTYraHZWcHQr?=
 =?utf-8?B?NmRabkNscUo3SUlDbXhvRjByNDJCV3lFQlc4cDBrM0poUG8ydzN3WFYwK1py?=
 =?utf-8?B?VzNNT2MxNTBCSnRnZ0tZekFDMjZrOTMrZFhGaUNtck1MZklEcVpGN1ZMcG1B?=
 =?utf-8?B?bThQRjhEb2RYZDUxeFVRZlFJK2IwNGlJcnJTT1Q4Q1RYcks3YlJIOVlTa2ls?=
 =?utf-8?B?VnBVSEFjbmlQZm1UcXNHZkNRZ0g1UXVPUng5VG8zMVZiY0pQQVRMRmF1OVZs?=
 =?utf-8?B?aVpBamkxQnQ4WHBWUUdZcG5FbjIxSnhha2QwdS9RL0hrdDQxUVFhMHFWUUFL?=
 =?utf-8?B?VlJWRzlZc2VHaDdXNDMwRjZPVDFxVWk1bHhoajhvRFk5eEJLcFZJL1BCVjJ1?=
 =?utf-8?B?WitybjY3ck5scWNyTXhyTEJWdHBPYi91a1V6anFoWGJZZTlCaVpqSDB3b0F5?=
 =?utf-8?B?YXhCZVluajNUNVJsVHdVZW05VGpoRTU5SkNycEc1V0E4OXpiUUMyaDlWZkdB?=
 =?utf-8?B?S3JqRG9zK3pWMWx3ZjkzYi84Q0pCWmRxS2dyZCtDQk9KYldsMFUzMmRWRFg1?=
 =?utf-8?B?eFhPVERjY0k1V3JDUzI3WFh3a1BZaDJxekNBQ2lqcG5pWHF6VXJ4bEVWUG5K?=
 =?utf-8?B?M3Ywa2cvMjlJdFdMcEhoU0hXM1loYUorclNuYkxjc09salZlb1hhVVpEZlEy?=
 =?utf-8?B?RTdsYWVBZ0Y0MFZFem5wall4dTlHd1dGb2djZmhjMGdueTBndGxRZVB5Q0Jq?=
 =?utf-8?B?NVZ6bElJdHdGQjlvUXU2b3FyVmt0T2w4Wmpqc05BT1pGbWpjV0VjTENGMldw?=
 =?utf-8?B?bXVjZ1pFQ1JkOGF4ZDJKR2RUUGVvUTBnTVJEWDRXSTFucnhSMm03Q0o1ZUIx?=
 =?utf-8?B?Z2JRcU9sckhxeEhyY3ZQNnhuUXJmZUQzcUFSWWpmWUs3cHAwN2RVSzJSRXNN?=
 =?utf-8?B?cFdkdlJVZnBGQWp4RVhuOHpyM1pKUUhIckhmMCtTWmJsUDg1eWtLWFBjeFhm?=
 =?utf-8?B?R1hGSVJhZ1ZCZTRsZEtPaW5NcGl0dlQ4YjJ5enNCb2VUaFR5RmdPVTJPMFJH?=
 =?utf-8?B?QVBzVE5pMWphdDhFdEc2djFYRkVrRDBpam0xd1kvZEIrWmF3elhsTnU2MVY3?=
 =?utf-8?B?NWVWazFRclMxSFR4L1B4S0E0Uk8waEx1em40blNiaGlhbWxWVStmRWlvRC9h?=
 =?utf-8?B?REMzK21xQ1UzeUlNQWhYSHFRUDRGWjMyODJLb1hFZ3dVR1NEVTRpVmhwTW5N?=
 =?utf-8?B?K2xFdy9hOGNRTE52VjZLYm5WWTJxdE5oYVBZWC92OXBMMG5jVzRHRUpCVjkz?=
 =?utf-8?B?VDdlWDNjaXczWTgxbmkwdVFlazBIWXE2VWVlZVRWUWlWWjdNSnZLeGg5YnRm?=
 =?utf-8?Q?1R/4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WlI0UloycW5lVzVESUhSUEsrVlpCUkt2SlNMTnFYMTVLLzBPNndiRXBWL3Bx?=
 =?utf-8?B?cmpUMk9keVBmRTVHV0Rjc1ZrM1ZKelZoaTVZaFlodmthUENObmdnWEhWQXJL?=
 =?utf-8?B?OEpCWTNKZlRJS2VteGJtMlU5NDkxNlNnRm8wM1pEVFNDOE1JQmdDd3lSdk1p?=
 =?utf-8?B?Y3E3Z2tLQ01TWm9XdnpJeEhzRlJwNTZGMk1zcjBOaHRBYkhBVnhPdmJqZnJK?=
 =?utf-8?B?bGVTUGorUUJmMU5JNXE2RnRVbEszREp6RU8vU1UxbERjL1J4TzEyVUordlFz?=
 =?utf-8?B?cnpLM0J2OXpTRVVYUE12OFBKREUzZ0V4SkRtcUJoNkI0aDF5ZkF4VDI3Uk5M?=
 =?utf-8?B?M0cxQXM2NGMyUXdwTUJWNGNMVkdqMmdidTE3bjhQdmdxMHRjMjdlWGx5WGJo?=
 =?utf-8?B?WCtKbXFMRVB3ckdWVVV6UFIxUzhMUEV1ODRSVnV2bEE0dkVLK2oxS1M0M1hv?=
 =?utf-8?B?QUY2cEw5T0ZaMjFsdnpydmtIcmFsZGVjczZNSjhpRlpURkRKZGZ3TnNtaThR?=
 =?utf-8?B?cHNXTFJDUnVsUENYclM0aVppOWdFcDhuM0s5RFpabnlHN0ZxRm82U3dVYjhC?=
 =?utf-8?B?N09wNHR4UGtyeHVKdUpxUitERzZ2QWI1eFQxU05NUmJuQjhrZTlaZ3JXK3pq?=
 =?utf-8?B?VmVuaGVuSUdSMFh4V0hpUEV0VmEvTGwraTBmTDhtTTR4MytveEdycW45REVQ?=
 =?utf-8?B?WjErV2NUYkdCMzZQZGM3VDY1alNrYXR5ZVJ5WnN4Vk5lOG1paWRib3lBY1ZS?=
 =?utf-8?B?Rjh3d2dwQ0JweFNjZEN5YlNhVmxpejdZc3BGMUNrdXV0V3JFbFB4ZDhvWTZw?=
 =?utf-8?B?dzlLZmg3ZTJvdyszd096Yzh1ajRYdHZoeHF3SVA0eHQzN3BZTUtZL0VEZksr?=
 =?utf-8?B?dGdsL2JXWDdKaGpUeXJrSTdSd0hZd0ZjenBhRFpBc3Nid1J1NzVSZEVOL2dk?=
 =?utf-8?B?VGcvNHpHWjdVTGJMU1JqSEVaTUxlKzRReHBKUFNqejJuUjBKblFXeitRTXU4?=
 =?utf-8?B?aGZIMkV0UEFncGJMVE15NjZMWVZUT0ZSdERhbGRUVHBLbG9BVW1rd2Nmck56?=
 =?utf-8?B?U0FWL1BpVFI1YjJYRWNLT25mSkt0N21FNTNLQVk1ckZQc3U1TUJRVHVtU01F?=
 =?utf-8?B?VFgxZDBTRUx2akRQemlWQWo5cjFsTDVGN1VFekFpNWVEMTNTYkxFazRTRmUr?=
 =?utf-8?B?VEwwWXlpdmNld2hnRUFmem1oWlBQTUoyM1h2YzdEMzQ5VmN2SUFENU1iNWor?=
 =?utf-8?B?QUtHWEMzcDdXK25SM1JsamZQQlducWNhMDd3WWJ1SG5seEpKTkpwdll2RXpy?=
 =?utf-8?B?QXFuMjhlb0h0S3VPVElabHF6dEhhYmJsY3FaYVRCblNjWWdHYTQ1OFd0aEZ1?=
 =?utf-8?B?SEZRVGw3eWFhZTNFOVNZSlZPTkZyMEFhSzNEN2V1MmkvUlhkKytzdHB6Qmov?=
 =?utf-8?B?STlkbENOSE9xMHgyUkVIWlREWU9NTDZOSUNVa1hXS1RtWUZEaWxMdGNiVjFR?=
 =?utf-8?B?TVRPaXh6QmUyTFBWOUxuNGNSWW5YY1NXZTBaNWdsbVN0WUVTaDJTTVlRRmtT?=
 =?utf-8?B?UTB6ajlnNVR0L2NLRVZMb0FsZzQ1VjhlRWFNUmJhaGJLSDNpeHQzaTZyR3dx?=
 =?utf-8?B?M3oreXY5MFNoTXZVU0xKMVVUTzlKdUdtQW5wYW1lS1hpa3hVWkZscFUzeGo4?=
 =?utf-8?B?TTY5Zzhmb2FBanVEMXQrTUM5UVlucWV6dU1aclBrWUFjWDdkWHpEYXJZMUZG?=
 =?utf-8?B?UTE1TnRaTFh3SjMzTlBXN0NqWXJzQS9IdFgvaDNmV0EyeFRRR1ljMmtYV2Nq?=
 =?utf-8?B?T2wzc09LZE8ySlVkZWJETEdzcU1iNnNkL0lPWEJFR2ltTXVCMkhrUkFOK0Nl?=
 =?utf-8?B?QnZIYWtRNmYyb29FOEZBYVMzelh5MzJYbjJJM3Bra0ZNaHFta0NtNFZPM1Vp?=
 =?utf-8?B?NWdPdEc2YnFjTndZVHFteTVCOUJqL2JseUxQM2MvTkpsTk04dG5kRkZnNytR?=
 =?utf-8?B?enhaNW5IdEVTZW56NCtxUStmR3A0MGdxd2hZTXY0L2FQZWVpcVNHUWE5YWtJ?=
 =?utf-8?B?NHQrd3lVQWZ4Slhtb2ZWYldMekMvbFlKUFIyUUVBMU9xUUpCYS9PdHFEeGkw?=
 =?utf-8?B?NlVxSDZXeVdyaUw0WU83M05iWG5DamlXQkxmOXJ6bE9XN2xDeHdCNEFKNDd5?=
 =?utf-8?B?Tit4SlgyM3A3eVpQNklZaXVDeVlkZVR4Vy84b2wyNzFXamFyUm5FZkpJa3p1?=
 =?utf-8?B?a0w1SVZCYnFHYWNyakxEb1U3UllVNGNBdzVzNTNMZnMxZUJhbTFkK3JQNTF2?=
 =?utf-8?B?a2k0Z1Y0cDl3ZitvRG9OT1VRYXJuVnlXVktlZFB4Q0ZTMUZpZHphR3kyaE5U?=
 =?utf-8?Q?NCZOEKfAFMy9Ka5s=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0f80638-cb01-494e-2ad7-08de6ee40bf8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2026 11:51:26.8845 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C4pcQIa1Tqr6IPPxD7POC3DM1Sv4/HBbgViZ/ByvaKke5QPp5fEzLH7PrVoUoPLLIjslm9aIEc/iZFysi1x6kodAU+YBobrv+vpmy44be2k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6746
X-OriginatorOrg: intel.com
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 6C4951561BF
X-Rspamd-Action: no action


On 2/18/2026 4:27 PM, Imre Deak wrote:
> Handle modeset WW mutex lock failures due to contention properly.
> Return -EDEADLK to the caller instead of attempting to lock the same
> mutex again in a subsequent joiner candidate iteration, where the WW
> mutex is already in a contended state.
>
> This fixes the following warning:
>
> WARNING: drivers/gpu/drm/drm_modeset_lock.c:298 at modeset_lock+0x1c0/0x210
>
> triggered by ctx->contended.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Fixes: b506a8e18c972 ("drm/i915/dp_mst: Rework pipe joiner logic in compute_config")
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index f833f47643271..94c0231426642 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -729,7 +729,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>   							       pipe_config,
>   							       conn_state,
>   							       num_joined_pipes);
> -		if (ret == 0)
> +		if (ret == 0 || ret == -EDEADLK)
>   			break;
>   	}
>   
