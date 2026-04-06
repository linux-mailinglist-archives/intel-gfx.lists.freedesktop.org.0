Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPb3MfxD02knggcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 07:26:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3761D3A194A
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 07:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05BEA10E20A;
	Mon,  6 Apr 2026 05:26:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zmv95utb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 914EC10E1FD;
 Mon,  6 Apr 2026 05:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775453177; x=1806989177;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UzSY559scqdngiUUs1HTNepaD/CB6Xd/V0LB4gP+LWE=;
 b=Zmv95utbf2YMPFZNhEM87XgpgUNssrW5u3oLDlqo3oiqE/UhJT/bQZb1
 YLyoLz1lcz40kjK7rFA4HW+KRGIGCSJNj5JYjBdtrin52HRub25yN0Lm5
 o7h1FVBMYXavLMbHwuot2RDTdPbg97agdRgoefRlGRxp2zKNCA3Kq3qBX
 ZkG8fIypMLMftcNGekZ90tnmM2sjfK9GWPeG/FrH2caF1165BzBLSEpGe
 LgbT9G6EL+pdsgUEUppgk1oB7OdwYxR/Y5gaXlwxm5I704nGi+5MoanqK
 P9t28gnRAgjJ9anatTZE5ejLJ66fdUZqsdhzazYItQRPQeF0zcyVJDMI9 g==;
X-CSE-ConnectionGUID: PRglbsVUSOupmcNYyKKWdw==
X-CSE-MsgGUID: N6Peo4nySISLwwkakIiRow==
X-IronPort-AV: E=McAfee;i="6800,10657,11750"; a="99029277"
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="99029277"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 22:26:14 -0700
X-CSE-ConnectionGUID: ktLSTwWDQ7iYJ/ybqopSEQ==
X-CSE-MsgGUID: Qfm01oU5TjKZ2MuVNNi3MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="221202143"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 22:26:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 22:26:13 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 5 Apr 2026 22:26:13 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.40) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 22:26:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mwL4oy/W7yd77+NnscsSxpFJd1gwzXTl9wGgHbZ3PYxw8yAPG5o/llyiFGuqCFUgk3HW613MgEBKAMudvHUj/qXohYT3Gatf802O8O10fuYofoSnUV2c+7Q7Tty45xF8sAcsTcKbOgtSrnW8hfCjEOR/cBfmsVyAhabuJUdGsyQHls2whPSoHmjocUnCdH93JipcYfh5nkb7GGQjqZCyDO1UJb+hRwFE8YXm2pR2AewjwFXMy7HZmxUwzN9kR/1zE88zChv18tifzx7n3v4Zbf7vMSCry3xrbdXRTZPBVrV95mcKDiRkuqfoCZWzxQXuMrXpgD1PsMRfl5HLJtvBTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X1GuL6/gCi2/YAKIKvKmOid6pumZzGLWhVNOzbE5bek=;
 b=QmKWsaxbHIR8v+lk0xBOKfR4h8LcV1Qimmtq7/syutFdoKRpuPDh8J2NxX2pkCAqt1xPVsLmzUcMyviSN4vzpuzG9c6CBDDYFkdTG5LwDlYukUtaWobb0CRxdjcDv//A54jvCEmFx4ph4S1EvAJnhnm1MSs5zmjcfix+azLx6iZ00icF/W1Erz5o8t94ydcufAwmf39OgNA9FSLhOiFY+0ACgAqoURjHYc2wd4sO9X/9g0DhpFnXLjrUGIUf9/SG+HPY5iRqmISHYrqKPmlFMRJP/tS+eGUOzansn9CLKY6Pti/XOJhfQqxlzGgmbTpXBeRalC0vQEqy/kRLrxZkPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV4PR11MB9491.namprd11.prod.outlook.com (2603:10b6:408:2de::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.19; Mon, 6 Apr
 2026 05:26:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 05:26:11 +0000
Message-ID: <61997692-afe2-4d6d-88f8-ce251e51beaf@intel.com>
Date: Mon, 6 Apr 2026 10:56:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] drm/i915/hdmi: Restructure the sink/output format
 selection
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 <intel-gfx@lists.freedesktop.org>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-3-ville.syrjala@linux.intel.com>
 <2868694.iZASKD2KPV@workhorse>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <2868694.iZASKD2KPV@workhorse>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0218.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b4::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV4PR11MB9491:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d57ecdb-bc61-40c7-a9af-08de939d0390
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: OU+7a8/ZO+O9IzCnEMKXhtZ+kTZTf0k/titXLkyXppLiwNvcc0INg2bvfftkuVm6yf7/zXmj4b3v+Fi4CS2ikpXj1nFe7FaNIQPMLsxinJiv1yjQs7KlJ5dcdKrMYJ9cvGnOHGuVnztCQgy1dMz8hICwFQ0IvhxVs5dGSacKJvO9GwR5UP5JxyDD2r6xQF+pMlsPa6VHhQZDSyUcuScMoM+0sZ62zqYyEiRFEWpVr7ljcgh+gl1vzQx3j4qDCPmCuxbD9Olbe67xPu/yB3cpjgHI0U0a/DSAxb7Emx7d2L7txNuba5ZH4Bik84nmD4k6ldzffoYCnKOixIzlQZH4KoGoNWacEM7mYk/ReZwKT6SEwFdJ+Wjp6U6qH6zHBsiuNGBz7o1fMMswHS9ah7LSLcYM8Ay/ZTt9oFmY3nY8FAGVlQK0EUW9wSWcN/CelmVlmtpxo+Mkao/pZAGBEinXHeymnJzbZ4rkNHORQCIwHxDTBKVp/24AGQlu5Sa2qks64S33DfGSbZXlHFd8eIDs6jjuHqCU6HtxwRTBs4ENkJW5oi3pYkhGrrPCyssChGE3jpIv7IxPIVTxSIFfmWviM8K78pdNTjcZZ32b1iPHOIFzETf/tLrboMuaAxw0vk5oJprUmUfhHYCTha54BdyOVcPZeCTAjvXLgrUF4Gmnn4l/4HEKRSfSY+YETj1nqXMQsl71k4H88Dcus+63BLV9FYXg3g9QjxwbPaGGniehLqg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVFqQm5vaEdKSHNNQU1lb01rWGxyUU5iY1FLbkpHRlFMOCtlMGpiMTE2dkt4?=
 =?utf-8?B?enU5bVZMVnlJOXE0aTJVZWtTWUI3WWIxeXB6ZFNaNEZMaW12NG9lalpDWE5p?=
 =?utf-8?B?cjVvYTJZaS8yd3hjRXM3RWRkc3k4UGFCRnVZdXBrQXRsNFljVVVNSlJTMENz?=
 =?utf-8?B?WUNzT1JtanRiWm9WcVZuUXpLc3VJKy91SUdSb29wZ1JxNFFLYnhYY00xc3dR?=
 =?utf-8?B?RElQNWJxT0Myc2lUZEx0aEJVRFNUT25pNDdJK3dBQzBoaVlvUE1WeXdlUExx?=
 =?utf-8?B?cDZKU0JzNmYrQjBsS2t0MjBRZ0J5RjFMVHk2LzVCT3N6enRvYm9DNTVFdjN6?=
 =?utf-8?B?bWVtNzUybHh0MkxjUUs3WDVHb3FMekdhaGhaYzlLUURKalFidmYrMVc1UjZQ?=
 =?utf-8?B?aVNXSG5ZNHc0aWNpQXEvcGhCSHJ6R0tab1hCeHY2QVBnREZDZlJZRnlwSTN5?=
 =?utf-8?B?NTF5ZVhVQkp5NkE5SSswYW94eWdoWXQvTnZ4ZUZNbVdqWm45T1RwMjlRQk54?=
 =?utf-8?B?RTJmVTFqSUdXNUFQT0pHNzlCWVpmQi96a0c1WUpZa0xFczNuUVhaQm5LKzFj?=
 =?utf-8?B?UERUM0lVdERSUUl3NDB3eE05c3FhdmpvZWRIRmdCZWpWSDVhaHVydklPZGpq?=
 =?utf-8?B?NEpaZzhVR3BxUUlLYVFCMi9Nc0lkc1Z5cVkyNWhxNVhEWTJJVG5FNUN2aDA2?=
 =?utf-8?B?MTFxbVBNZnJmMnpKaEorMDZEUVZ4QXNGeExNSnJKNTNMd0VaS3hPNUh1a0hj?=
 =?utf-8?B?Z1lXU2t0ckpuZjQrWHRiYlBrdlZ3WWo2WGxyUU0yUHoveUR0V2doRkpKMlJT?=
 =?utf-8?B?NVBYMFJ0NElLQWw5Y3FUbXh6YVh2bHVZOXlIS2ZjS3JxYVNXcFJRcnhUN0Ez?=
 =?utf-8?B?NGN2SGVJbG12cEladzc4ODVBRCtMTTFBT3lZdUg3RTh0Ti9GVlFWczZhdldK?=
 =?utf-8?B?Tisrdk1zMEZMZURpM0FpY1F6YVFidW56VzFzc0UrT2tZZnRiaitITTNOQk96?=
 =?utf-8?B?MlQrVFFkbC9PbVNaRXVEVDNpaVU3dGI3akg0Zmt6YUNRYTBjeHd6MmlaOEh2?=
 =?utf-8?B?cHhPNVk5WHNHNVhWT2V3cWFaVys0NEprbUt5Z1d6Z29DNG1paXBqZmdHMitJ?=
 =?utf-8?B?RnpaNlpHalQ3OTlmZWdiMXdKMzI1bTVPeFZ6RC84cXBaem5uUWFNNU8yNmVm?=
 =?utf-8?B?bmp3UHU3OG0xZGJUSmN2M2JhR2p0Slc1WGVaL2x6R1kzbitVYlJyd0diZExi?=
 =?utf-8?B?VDhRWC91a2JkSSt5WFhjT0tudmVzV0tTRmpOR2J4TEJsOFMxNDdSc2R3VDEy?=
 =?utf-8?B?bERUMVdDOWVRd3FyQlg4dE1WZ2ZORlRGb3JMK1lDV3EzV1lzVjRGdUNJdmtH?=
 =?utf-8?B?bmdPT3g1NU9UdzhPMjI2a3cwYUJjaVBRY1V4MW9BMTl1Y2VDSmFtYjBGSzBh?=
 =?utf-8?B?bG1jWnpUOUUxaUpGNkQrUGZIQ0h5TmEzQWdlZW93dTdXMmo5WkZsVExoUWJt?=
 =?utf-8?B?ZDRpK1ozSURsbjViZjhOSk1WRzkzckNqQ0s5dmdXUVg3dEJpZU4wU3cyZ2dS?=
 =?utf-8?B?ektvVFJ4VW13Ry8xVWNINVZFb1BZMVFDSk5PbHE1VUk1Q0Q2aDlweWVxclIz?=
 =?utf-8?B?RmNUMkthck5iTjVjOWVNSkVxKzlVQSs5dkIwVGIwczl0N3dLaGh6Qlc4VnBi?=
 =?utf-8?B?Z042bUV5dkJ6bGJOa2VjY2tGVFlYS0hhTHhlRzE0YWRydkxuczd5Z0I0eWEy?=
 =?utf-8?B?bDBKYmtKUHZ2RVdrcWRNTHdHdGhPNlFBQ0xTMXRuZU1NZEhKVVRtcUpBTzJP?=
 =?utf-8?B?cWE0V0lpcGlIR05NSGkvMHZoSEthYnVCSk9HUlJjeWVYRmI3MGFFSnIvZGpV?=
 =?utf-8?B?ZWYrVGlvUWtZajJzSElhOXY0QytRN3hlNSt3V1M3ZzBaNW1QSjFJZ3g3S2tj?=
 =?utf-8?B?TGo4cEVQUVd5bFZrd1FlL21Nak9GMEtJNmExL1NURUdLaSsyK1l0V0tEY3ZU?=
 =?utf-8?B?VUc0aXJFeWZMUkxIM1RueWtHSEVMSFJZSGRDZHFGaEFqWGNBbWdjazYyUzh5?=
 =?utf-8?B?SnNJMHZpNXRJVHpKK1JCSURPZ0dTbDhsUml2VUowVHQ0OEJyZC9NeDBhZTlW?=
 =?utf-8?B?Rmt6dTAzdkRpajgyZmtlRFFvTUVCbmFlYmZuMVpNZFJqYkdWdEdneWd0R2RC?=
 =?utf-8?B?MnBtR2xRYzI3ZU1oV0JEWWZOOUtYU1NsbW5MYys2VFRMTDdTaE1rRHRKNTF3?=
 =?utf-8?B?Wm5TdGN6ZGxjTEh5a2ZOemloN09lRDNhU3hxWmtMTGErOEs4RmJLWTZrdWE5?=
 =?utf-8?B?eHBoY2Y0YUNZZFJKT3JoZVZMc0s4WmtSUHZvSWxhRlBZMDBMSFlXeWphSUdl?=
 =?utf-8?Q?Yt3qIgaX4itL6BJY=3D?=
X-Exchange-RoutingPolicyChecked: t25h+7U9tIBBaIw09jdcP8cQrW6vvf7iiLCSKL1ijwP/MIVv6wcLRwGfqFbDIAHte2X+/vL/+kQEFDGI5hg9tocPBMS2sMFDlF6C2eoiHrpsg9UTUmCdUYNsKQntmWkz7pJh25HycO3cmpBY00WXesQKg8Ud3b0IBh/iIhoW/zfRPr1jjs4ECTBSTTenwLKqcq90984AK8AuLEKplW6RgGdHzPCwbtlw3VOSaTYUVlAAIVN968+qQE5A8RGVk0ARVRtNCblLEj3ipCLORfuNnYlO2Wek4X9E6l+NuwHMYZA/Apt/w5kqwPV3poDG7S31YhGt4kNx5tIIfwHQbWf/XA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d57ecdb-bc61-40c7-a9af-08de939d0390
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 05:26:11.5344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 03OXYBpb/6+1HgXFC1Sk2+It5Y71YW91QvpOU+htM+/mTYQ4e50N9ck+b09lJWdELBi5zW6/hLJ5zuRGfIpHRYAvABgAeNcWerhQdTiMAUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9491
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3761D3A194A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 5:42 PM, Nicolas Frattaroli wrote:
> On Tuesday, 31 March 2026 01:53:32 Central European Summer Time Ville Syrjala wrote:
>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>> intel_hdmi_compute_output_format() is a bit of a mess. Try to
>> restructure it into a more readable form.
>>
>> Right now we basically have two main code paths:
>> - YCbCr 4:2:0 only modes
>> - everything else including YCbCr 4:2:0 also modes
>>
>> Those two basically do the same two steps (try 4:2:0 and try 4:4:4)
>> but in opposite orders. Let's write that out in a more explicit
>> if-else form. And since I'm running out of function names I'll
>> rename the function with that high level logic into
>> intel_hdmi_compute_formats() and it will call (the new) with
>> intel_hdmi_compute_output_format() with an explicit sink_format
>> as needed.
>>
>> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 112 ++++++++++++++--------
>>   1 file changed, 70 insertions(+), 42 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index 072b0554cc24..16873fc7bcb9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2021,6 +2021,30 @@ intel_hdmi_mode_clock_valid(struct drm_connector *_connector, int clock,
>>   	return status;
>>   }
>>   
>> +static enum drm_mode_status
>> +intel_hdmi_sink_format_valid(struct intel_connector *connector,
>> +			     const struct drm_display_mode *mode,
>> +			     bool has_hdmi_sink,
>> +			     enum intel_output_format sink_format)
>> +{
>> +	const struct drm_display_info *info = &connector->base.display_info;
>> +
>> +	switch (sink_format) {
>> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
>> +		if (!has_hdmi_sink ||
>> +		    !connector->base.ycbcr_420_allowed ||
>> +		    !drm_mode_is_420(info, mode))
>> +			return MODE_NO_420;
>> +
>> +		return MODE_OK;
>> +	case INTEL_OUTPUT_FORMAT_RGB:
>> +		return MODE_OK;
>> +	default:
>> +		MISSING_CASE(sink_format);
>> +		return MODE_BAD;
>> +	}
>> +}
> I think this here is missing INTEL_OUTPUT_FORMAT_YCBCR444 as a case.
> The following diff adding it for both intel_hdmi_sink_format_valid
> and intel_hdmi_sink_bpc_possible that I quickly whipped up may be the
> way to go, but I'm unsure about the interaction between the two:

Hmm.. Trying YCBCR444 format, is not yet implemented.

We need to have a well defined policy as to when to use YCBCR444, and 
that should be in the newly created intel_hdmi_compute_formats(), 
perhaps it should be after we have tried and failed with RGB444.

(Although I am not sure in what case compute for RGB 444 will fail and 
pass for YCBCR444).

However,this should be a separate patch/series.


Regards,

Ankit


>
> ---
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 6bc1689cbf93..38b9924ebef0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1966,6 +1966,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *_connector,
>   
>                  if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>                          return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_36;
> +               else if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444)
> +                       return info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID_HDMI_DC_36;
>                  else
>                          return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_36;
>          case 10:
> @@ -1974,6 +1976,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *_connector,
>   
>                  if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>                          return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_30;
> +               else if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444)
> +                       return info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID_HDMI_DC_30;
>                  else
>                          return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_30;
>          case 8:
> @@ -2038,6 +2042,11 @@ intel_hdmi_sink_format_valid(struct intel_connector *connector,
>   
>                  return MODE_OK;
>          case INTEL_OUTPUT_FORMAT_RGB:
> +               return MODE_OK;
> +       case INTEL_OUTPUT_FORMAT_YCBCR444:
> +               if (!(info->color_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444)))
> +                       return MODE_BAD;
> +
>                  return MODE_OK;
>          default:
>                  MISSING_CASE(sink_format);
> ---
>
> It does work for me though at YCBCr 4:4:4 @ 12bpc, 10bpc and 8bpc, so both info
> members this relies on are populated correctly.
>
>> +
>>   static enum drm_mode_status
>>   intel_hdmi_mode_valid(struct drm_connector *_connector,
>>   		      const struct drm_display_mode *mode)
>> @@ -2246,20 +2270,6 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
>>   		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
>>   }
>>   
>> -static enum intel_output_format
>> -intel_hdmi_sink_format(const struct intel_crtc_state *crtc_state,
>> -		       struct intel_connector *connector,
>> -		       bool ycbcr_420_output)
>> -{
>> -	if (!crtc_state->has_hdmi_sink)
>> -		return INTEL_OUTPUT_FORMAT_RGB;
>> -
>> -	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
>> -		return INTEL_OUTPUT_FORMAT_YCBCR420;
>> -	else
>> -		return INTEL_OUTPUT_FORMAT_RGB;
>> -}
>> -
>>   static enum intel_output_format
>>   intel_hdmi_output_format(const struct intel_crtc_state *crtc_state)
>>   {
>> @@ -2268,37 +2278,55 @@ intel_hdmi_output_format(const struct intel_crtc_state *crtc_state)
>>   
>>   static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
>>   					    struct intel_crtc_state *crtc_state,
>> -					    const struct drm_connector_state *conn_state,
>> -					    bool respect_downstream_limits)
>> +					    struct intel_connector *connector,
>> +					    bool respect_downstream_limits,
>> +					    enum intel_output_format sink_format)
>>   {
>> -	struct intel_display *display = to_intel_display(encoder);
>> -	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> -	const struct drm_display_info *info = &connector->base.display_info;
>> -	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
>> -	int ret;
>>   
>> -	crtc_state->sink_format =
>> -		intel_hdmi_sink_format(crtc_state, connector, ycbcr_420_only);
>> -
>> -	if (ycbcr_420_only && crtc_state->sink_format != INTEL_OUTPUT_FORMAT_YCBCR420) {
>> -		drm_dbg_kms(display->drm,
>> -			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>> -	}
>> +	if (intel_hdmi_sink_format_valid(connector, adjusted_mode,
>> +					 crtc_state->has_hdmi_sink, sink_format) != MODE_OK)
>> +		return -EINVAL;
>>   
>> +	crtc_state->sink_format = sink_format;
>>   	crtc_state->output_format = intel_hdmi_output_format(crtc_state);
>> -	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>> -	if (ret) {
>> -		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>> -		    !crtc_state->has_hdmi_sink ||
>> -		    !connector->base.ycbcr_420_allowed ||
>> -		    !drm_mode_is_420_also(info, adjusted_mode))
>> -			return ret;
>> -
>> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> -		crtc_state->output_format = intel_hdmi_output_format(crtc_state);
>> -		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>> +
>> +	return intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>> +}
>> +
>> +static int intel_hdmi_compute_formats(struct intel_encoder *encoder,
>> +				      struct intel_crtc_state *crtc_state,
>> +				      const struct drm_connector_state *conn_state,
>> +				      bool respect_downstream_limits)
>> +{
>> +	struct intel_display *display = to_intel_display(encoder);
>> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	const struct drm_display_info *info = &connector->base.display_info;
>> +	int ret;
>> +
>> +	if (drm_mode_is_420_only(info, adjusted_mode)) {
>> +		ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
>> +						       respect_downstream_limits,
>> +						       INTEL_OUTPUT_FORMAT_YCBCR420);
>> +
>> +		if (ret) {
>> +			drm_dbg_kms(display->drm,
>> +				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>> +
>> +			ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
>> +							       respect_downstream_limits,
>> +							       INTEL_OUTPUT_FORMAT_RGB);
>> +		}
>> +	} else {
>> +		ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
>> +						       respect_downstream_limits,
>> +						       INTEL_OUTPUT_FORMAT_RGB);
>> +
>> +		if (ret && drm_mode_is_420_also(info, adjusted_mode))
>> +			ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
>> +							       respect_downstream_limits,
>> +							       INTEL_OUTPUT_FORMAT_YCBCR420);
>>   	}
>>   
>>   	return ret;
>> @@ -2375,9 +2403,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>>   	 * Try to respect downstream TMDS clock limits first, if
>>   	 * that fails assume the user might know something we don't.
>>   	 */
>> -	ret = intel_hdmi_compute_output_format(encoder, pipe_config, conn_state, true);
>> +	ret = intel_hdmi_compute_formats(encoder, pipe_config, conn_state, true);
>>   	if (ret)
>> -		ret = intel_hdmi_compute_output_format(encoder, pipe_config, conn_state, false);
>> +		ret = intel_hdmi_compute_formats(encoder, pipe_config, conn_state, false);
>>   	if (ret) {
>>   		drm_dbg_kms(display->drm,
>>   			    "unsupported HDMI clock (%d kHz), rejecting mode\n",
>>
>
>
>
