Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15840BCD014
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 15:01:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6546610EC00;
	Fri, 10 Oct 2025 13:01:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LSCoxP6j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA0C810EBFE;
 Fri, 10 Oct 2025 13:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760101300; x=1791637300;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mFVtFz6kOryNB8iGqdfaXPq84OJHpKV4bBmgmBmSgeY=;
 b=LSCoxP6j0lDHhv5Tcoz5aRv0Oq3FHOFyrkyCrh+VWLU9s3gzb+S7szAz
 yobxhvnmvK3jIgXBtLSTdF8f0gzb6GRoZCAauBRQl12blN84R8vhmWIfW
 bdU1gntvkpeDVtxXXD0GXH+SCUm+/jLbMp8L8aw/rMeMTrlVi78QzBytF
 SA7JtruI8ayCZVyoShHYJ5ZFb2A2T+Q/qzXuXNk89mlgeRz3ReEExrJJH
 6+5fXINiKviHcLFpRQ76wgIvO1l2X+3/gRfH+oSJHxp/Jb30pIRJlnRpe
 kfICnrdSTh0fgkerLERgMgXMnb+g6vJUyVlaBeg4T1mHX7YiVSLYufC8d g==;
X-CSE-ConnectionGUID: ymvifW7uTVGKweKCU27sng==
X-CSE-MsgGUID: SKvQNojLSIe5TLqONLZYCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="87778821"
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="87778821"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:01:39 -0700
X-CSE-ConnectionGUID: I4G2tLJ/QmqXdvyyA//vRA==
X-CSE-MsgGUID: DyPCgGoRS0C05/G5p7X9Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="181400779"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:01:39 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 06:01:38 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 06:01:38 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.52)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 06:01:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eV71kePbGUAD2U0LUIvAVqbWBiSiJL02hEKqBBAoeJ9LykFoO8lYNEipp2iz8ukFbdVds+3suAcvDyZj0oe3WggS9t3lDMgSZ3HsX/DFUz2ejrSCb+JaFXa8mJCOF+piolIWPxDXxu/+xsSz/8YNAf/T4sjJMgOeqShK8QOkS8DiSmYvIb1Vofw76RXQTQCsZYRmaI6lLJtVbGwDdVBFOv95P8qcsiOR4wPBcIjIxUYwuoAGg8Hno4SkIV/7GKIxLTOWuZS9dPT6fUnb2huOxsQWUd02mgvt2UVpQ8JXiYFbqud6YsKLHXPnfkyrKjEXv65aP9kvVKmu2cs/3L2zjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gbg7cxFFWTrtMXyjeAyJ6chhamPvwIpF9Mf1idCl7W8=;
 b=Jx66GFAFg6iKLaBfvSsKl8OjOCbvkUoxjB54mBrhXGpF4VbPOzLeeVkIyCNnbAqVg+zUKEQIA9dvQZDh7gJlK5vT/C9dehxnxjU5fnrEr7v1YDA3fe0eLuqrgV5MtpBixWxmMrDLlJeQ5WgxPUGEHSsY98hiZD5MUKoZf6c+9onA1tuhNWAts7ibkSsFc5PN3L/Oa2BG8xq847N3j1hV959wHTFyIbmYQ5G1NJi9WodXt/OZcvqVFeNibi1lX5JHREw+ZGHeqm7wHC9ruZ9bpyJl7AgCSuoodqAn1tJhsoAnCOcO3gtcchler5COeossInU7GCKadpjRuEekANQDWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6244.namprd11.prod.outlook.com (2603:10b6:208:3e6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Fri, 10 Oct
 2025 13:01:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Fri, 10 Oct 2025
 13:01:33 +0000
Message-ID: <6f28c0e2-1e9a-4111-a4fc-b6ecf085a7b5@intel.com>
Date: Fri, 10 Oct 2025 18:31:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] drm/i915/psr: Consider SCL lines when validating
 vblank for wake latency
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
 <20251009090102.850344-5-ankit.k.nautiyal@intel.com>
 <0759f65cc1e2030c7f4bde76e907192958e1ccfd.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <0759f65cc1e2030c7f4bde76e907192958e1ccfd.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0082.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ad::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6244:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a259450-1d12-41ed-06ad-08de07fd22bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZE1Sam1RYTRoYk1JY0RydWlRekdmdWsxdVJ5bDlHdVBnVDBvL1IyckhtdmF6?=
 =?utf-8?B?L0lVbXMvenlyR1RrYWdZUW5wTkNBZEliWXp6NVpkVzRZbU9MRWFZTCtsbXZn?=
 =?utf-8?B?cFhHWXIxYmhuMlhJbTdVbVcyNll1SzJGemhoV3FwM1VJcFE4NzVweG9nT0M0?=
 =?utf-8?B?OTIzelNlbjJkRU9aUXNGN25ZOUlOSWQwK1Rrdno5Sjhmbk9mdEtXMndxOHdi?=
 =?utf-8?B?Y2xPQW1wOVFtZGtURXlzTjB1V1phTHlLaUoyaHY1NG8wZ3NEbHRweEE1WmRT?=
 =?utf-8?B?RnRIb01NMVRUc3Z2VlMzS0pnQXBraEwrZ2NXTnB5S0t3cUxMT3JYUEwvZFcz?=
 =?utf-8?B?YWJwTHpsSU0zbTBDYTFHcFlhYlJmeStnNG14NU5hZU5zcTk2WlFuUlFGaUlO?=
 =?utf-8?B?ZWl6VTAxdkV6MTFIQTdyZFlPOFhucnJ2cG1rbEpUWFdSZzd1cGpicUk0SWR1?=
 =?utf-8?B?TU5HZUhoV0tESkErb25mSG9teTE2VW5IbGUzYVBhZmNTZlNoMm1FK3JyczhE?=
 =?utf-8?B?bU5FNXBuVm45RGx4b09ZVWE0Sm5KcmMwdHVaaXJqekJDUjVxcFp1TFhLMlVk?=
 =?utf-8?B?NzhzS3BES0dsN0dDVlcvZzQwaDFNQlJEay90Qjd1UmlyNFRzTzNjSW9QdFFp?=
 =?utf-8?B?Z0VTcEFEb0luZjZmUVdDRFc0RVBqUlQyTEtuZFM3MWluc0MxdkxtWmIyY3Av?=
 =?utf-8?B?VVd1RzVBOWlEYnRVNkplb25tZkRZcS94WFRiNU9aWjkzZDNHa3F5RmlGWVpt?=
 =?utf-8?B?aXYxNXdteUlKQzJEYUVNUUM0TFVQTU0vajloY05DdXdNTCtrei9waDdGeDRs?=
 =?utf-8?B?OGJHYW9JNU93RDhSeXVSZ2tsYXhBN01YZ1VMSEt0amUwTUFqSDVRR043eFVu?=
 =?utf-8?B?TS9xR3FPcFZQdDRLc2lMSzB6bm1IVk51eGhtUTN1eEE3anE4WHNMN0VwVDV2?=
 =?utf-8?B?Wndva01OSDdjSkxqUERSS0tCdnV3Wm4weHE3WnlzREJCa1h2Yy81SEJZdDA5?=
 =?utf-8?B?VDVxaDRFMFNHWFArOXZKQmdqUG95S1lvYWpPZXErVTNCUG9xWEt4czJIajhu?=
 =?utf-8?B?dVV5WkZ0U3NhZS91VGN0ZTV3RHhHV1RCYjBQTXVBaDhxd24rK0M5eHh0Z0g2?=
 =?utf-8?B?ay9XRnorYnFCSkJxWmNRSW1hMUNzcUhDZFRkTitCbnUvQjRLTUc5dlZlMWtL?=
 =?utf-8?B?bEx3YjVlYjNudnk5WHprTWErVXB2QjlORVM3MXorM0doUjJKSHJzTGZiM1Qz?=
 =?utf-8?B?ajJRWE5NS1R6cmNRV253Y0p2M1lNakgraTZ4L3JxcE1aaXRTNklFc28vZXZk?=
 =?utf-8?B?RzBmV0R2ZGE1RXJ3bEViODJ5bVBVSk0wMSs0KzZ5SGdWS3c3cDI0VVdkM2Vm?=
 =?utf-8?B?YldrNVppT2dLUWRhSDNxQzJLekhIYTBwdDVlY2xPTDBtSWlvWnZpMnZOb01U?=
 =?utf-8?B?Z1pvNU1OaEdWSStob1J0WlJ4ckVkQ0lxSGFHU0hBSXhLUDY3YmdXMXNaa2pr?=
 =?utf-8?B?eGp3M01IMUNDNUJqKzZlYU5VdG5taSt0d3ltWlhYVFZBeGVkMnFCb2JNeVM0?=
 =?utf-8?B?Y2xjQ3d4a0wzbS9WSXFuYTFiYXR0SEppSlJXbkNvSHFxOStOQ0pDN2VHRVJi?=
 =?utf-8?B?dmF1WWxFYTIreFI5QzYrWnVibHUrOHJsZVBYNmhwZU9mSi9UdmpQYTBlMmo5?=
 =?utf-8?B?K0ZxZnZpTi9Ed0pldVdFWTNEVUZZZ2JWaGVjS20wb2tETHlRRWRkYlY3Qm02?=
 =?utf-8?B?MWJOZ2ZIQ1JSd2tFZFhIMTB0TzVJckNpVllSODVhbFgwZWtCaXhHK3ZVakVQ?=
 =?utf-8?B?OE0zWklrd2QrMDNiUDhXZUNsTllBZXZueEYvS0lrVDhOK3FBOVBUVlREbm5S?=
 =?utf-8?B?VTdIZ01pOG9OSzBlQmJrbnhqZk5JRHZZc0FyaldJdHE3eXc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0k1N29TNGxQNkVoc1dySHMrUTBKa2doYXNRcmljOEk2RTZORk5uYm8xeVBp?=
 =?utf-8?B?b0VLR2kwZzhDL01Jc3hrYk9SQVZyQ1RPUzMvR0IyL1Q0c0tDTFJndUlPL2ZI?=
 =?utf-8?B?RW5PZWxWdVZrNTJoZlowR2cxMHByTkNjTEdCLzZlK0JUK3NlaUpXS1l0amxi?=
 =?utf-8?B?VDVKVXhsS2VKTXZvRys3ZWZTKzBwRzcrZXpuTnpuZWVuaUNyRSt0WkpWak9Z?=
 =?utf-8?B?ci9FeFhTWGd2T1c5UlpFUXJ6aEQrZE4zbGc1blp1WUk0YzdOcnFCb0xFUks0?=
 =?utf-8?B?TXluSnI2c0RUUEJxTy9VWUlGcS9uckFlYkNodjlaOGFpWjFYVlJuRlovTHI1?=
 =?utf-8?B?clF3RjZJZnExT2IvVjN0SWJjV1Q4eHkrd3Y2ZWY2SGRqRzlhNUdScDRDMjlH?=
 =?utf-8?B?ZjlwRFZXcDhyVDVISlljc2Nnd0g2SDQ1WUlmcXZjaWtvTE9MZm1ETGhyUUcy?=
 =?utf-8?B?ZS9NdmVTanY4VHFteE1iZzZMQjBwWEtKYTU2cDFoamk3T2RvbU1MM1h6Ni9m?=
 =?utf-8?B?V3RvQlU2WFp3YUtTbFU0OFdPZTcxVlgyUnowd2c0eGJXUHArWk1KOVF2TU02?=
 =?utf-8?B?eUwzK2lUdmZvUC9hcmdkVndtRjg5SzJqdUhRNGJZb0VlakxjdzluTVQ0ckFK?=
 =?utf-8?B?czlnelQ5YXVuaVBBenhENnZPdytIRndqeDJ6REZYaWF5elVYc0FOekNzSXVi?=
 =?utf-8?B?eEF6bCtQVjkxZFh1Tk96K2o1WmUvZFEwcUdwUVdKRUZZRkJ4MGRXdlN0Z2ZZ?=
 =?utf-8?B?eFdXTnJGNWpQVkoxUXp4UjdvRy9ZODk2clJuRGZta3JWUDhNT213ZUxrMjBW?=
 =?utf-8?B?eGJyVTR6UmEyWW5TQTZMK09NdzZYdG03NlViVnBJeFdrb1JLeXo3SHhRdldu?=
 =?utf-8?B?cmx2cXV0NGNQUFVwR1ZIaTZYQytrU0tvcVJFZTY3SFFUSmdnTXExRWxmM0di?=
 =?utf-8?B?eU9pbEhLYTR6RWplcDdUdURRbk9jVUp5elJ5SjlmWW92T1ZTRk5vMU5ZeEdp?=
 =?utf-8?B?VjFiZmozeDFpTXNVdEdzMmZTa0pPZ1VNaU1hYUMwZ1J5TDhqN01DVWNTWDZx?=
 =?utf-8?B?VUU1Q0Q5dG9LeDllY3ovU2wwQ1hMSnl0SzduSWhVRndKNEhtSG1IdW5ERkNu?=
 =?utf-8?B?dDNVQ0YyWXk5ZHppeHRWb0lUb1IrV2x0STI1ejE0NzNDVFJOaC9MaVBQdVhU?=
 =?utf-8?B?RXQ5a2p3SlpyeUxPRXd3eDZhTTloQ0dnS0JlNVJGMHNsNFZwSUU2dVdvS2xE?=
 =?utf-8?B?R1JxY2ErNWxYa2RFZWE5VGtLZTFVSFdaMTFrV09MbmI5OWZWOHAranlFRDNs?=
 =?utf-8?B?Q1oyMGduYkhDQUhLYW1mdWM1SDdEQnVkZVhmSEo1T1IrcC9RRklqbGVPT0py?=
 =?utf-8?B?N1ZwcUtyYnBRNFljK0V3V2ZTVk4xbWY3SSthUkVybHA2Vy9SWVZKb3pQUW5B?=
 =?utf-8?B?RVVkQnlxcjJnNkZ0dzBKZXl5Snh2elpKUzNwdXRnR0swU3FJcFQ5U2FTWkdT?=
 =?utf-8?B?YWlkQ2kwSW9qMFFkbVdCN1d1SGVwZXErSkpWUy96MWdvcGZ4dzRpTzBweDN0?=
 =?utf-8?B?YmRjK1FmV3BOTU9kZ0x4L2NYNGk4MHR0UWFoY2RmZUJKdGtjVXRIczlYNUJl?=
 =?utf-8?B?VlhNTEYydGZQY2hibmtMdGRmaXNWVUFvOXpNbWE3eWtGS2R1WkpzaTJNNlc2?=
 =?utf-8?B?ZU5uL0hHRlhyOTJ1R0liRGV0NFZENHFHeTdyNzRCUE9kTTlVV1NiakljMVNr?=
 =?utf-8?B?L0lvRWo5TU9yVzJTMm42cHhkZnRuSHVrYmNab2JpTFpmclZzR2NiM0tjcUNG?=
 =?utf-8?B?SFZmZGxaR3U1N0N4dW9TSWY0L3FmVDhMZTVNdEhNaXVrVG05RDlScnFnNjQ2?=
 =?utf-8?B?S3VsZTBpU1F5c2VaTDB6VU1qcXlyemZBKzdZdE9LZ0NRUEZnM0lPU1NnOTJk?=
 =?utf-8?B?ZGxDckg5RzUxdC9ER3U2YVNUcFVIQ2tiTWdKNWMrOS9KUFNzSXRnZ01LVzdP?=
 =?utf-8?B?dzVxa3dJd29iQjlFeW5nWWRpQThZWXN6WStIWXF6dC9BaEhCOXpWOXJzZitR?=
 =?utf-8?B?ZWVxbnB3QzlBZ0NCR05BcDFsdE1IZTJpNEdjVE5NU09yb2NmZ29TbmxvSnB0?=
 =?utf-8?B?UVpiMW1qODcvLzZQL2VPWTBjbnpwam13TUU3RWlXR3hSY2Q4UVlHZkFDa3Jr?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a259450-1d12-41ed-06ad-08de07fd22bb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2025 13:01:32.9578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6FRfP5cQIHekOt2EqDoKjpfW3ZbNzYhm0Q1lJBDsWVS/Cpia1Ueh/SyGSyHmpkBJP3+EcZnbGIDvtPRFsOGpeR14qiN+zffyFAW8cZptl/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6244
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


On 10/10/2025 12:10 PM, Hogander, Jouni wrote:
> On Thu, 2025-10-09 at 14:30 +0530, Ankit Nautiyal wrote:
>> Panel Replay and PSR2 selective update require sufficient vblank
>> duration
>> to accommodate wake latencies. However, the current
>> wake_lines_fit_into_vblank() logic does not account for the minimum
>> Set Context Latency (SCL) lines.
>>
>> Separate out _intel_psr_min_set_context_latency() to compute the
>> minimum
>> SCL requirement based on platform and feature usage.
>>
>> The alpm_config_valid() helper is updated to pass the necessary
>> context for
>> determining whether Panel Replay or PSR2 selective update is enabled.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Animesh Manna <animesh.manna@intel.com>
>> Cc: Jouni Högander <jouni.hogander@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 102 ++++++++++++++-------
>> --
>>   1 file changed, 61 insertions(+), 41 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 2131473cead6..212bd244beed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1361,14 +1361,64 @@ static int
>> intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
>>   	return entry_setup_frames;
>>   }
>>   
>> +static
>> +int _intel_psr_min_set_context_latency(const struct intel_crtc_state
>> *crtc_state,
>> +				       bool needs_panel_replay,
>> +				       bool needs_sel_update)
>> +{
>> +	struct intel_display *display =
>> to_intel_display(crtc_state);
>> +
>> +	if (!crtc_state->has_psr)
>> +		return 0;
>> +
>> +	/* Wa_14015401596 */
>> +	if (intel_vrr_possible(crtc_state) &&
>> IS_DISPLAY_VER(display, 13, 14))
>> +		return 1;
>> +
>> +	/* Rest is for SRD_STATUS needed on LunarLake and onwards */
>> +	if (DISPLAY_VER(display) < 20)
>> +		return 0;
>> +
>> +	/*
>> +	 * Comment on SRD_STATUS register in Bspec for LunarLake and
>> onwards:
>> +	 *
>> +	 * To deterministically capture the transition of the state
>> machine
>> +	 * going from SRDOFFACK to IDLE, the delayed V. Blank should
>> be at least
>> +	 * one line after the non-delayed V. Blank.
>> +	 *
>> +	 * Legacy TG: TRANS_SET_CONTEXT_LATENCY > 0
>> +	 * VRR TG: TRANS_VRR_CTL[ VRR Guardband ] < (TRANS_VRR_VMAX[
>> VRR Vmax ]
>> +	 * - TRANS_VTOTAL[ Vertical Active ])
>> +	 *
>> +	 * SRD_STATUS is used only by PSR1 on PantherLake.
>> +	 * SRD_STATUS is used by PSR1 and Panel Replay DP on
>> LunarLake.
>> +	 */
>> +
>> +	if (DISPLAY_VER(display) >= 30 && (needs_panel_replay ||
>> +					   needs_sel_update))
>> +		return 0;
>> +	else if (DISPLAY_VER(display) < 30 && (needs_sel_update ||
>> +					
>> intel_crtc_has_type(crtc_state,
>> +								
>> INTEL_OUTPUT_EDP)))
>> +		return 0;
>> +	else
>> +		return 1;
>> +}
>> +
>>   static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
>>   				       const struct intel_crtc_state
>> *crtc_state,
>> -				       bool aux_less)
>> +				       bool aux_less,
>> +				       bool needs_sel_update,
>> +				       bool needs_panel_replay)
>>   {
>>   	struct intel_display *display = to_intel_display(intel_dp);
>>   	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
>>   		crtc_state->hw.adjusted_mode.crtc_vblank_start;
>>   	int wake_lines;
>> +	int scl = _intel_psr_min_set_context_latency(crtc_state,
>> +						
>> needs_sel_update,
>> +						
>> needs_panel_replay);
> Why can't you use crtc_state->set_context_latency?

This check wake_lines_fit_into_vblank() is called during 
encoder->compute_config() path (specifically in psr_compute_config()).

At this point of time set_context_latency is not computed. It is 
computed later in intel_crtc_compute_config().

There is some more discussion about it in : 
https://lore.kernel.org/all/aOVOJp2zeN1eCp7O@intel.com/

Perhaps I should have mentioned this in cover-letter.



>
>> +	vblank -= scl;
>>   
>>   	if (aux_less)
>>   		wake_lines = crtc_state-
>>> alpm_state.aux_less_wake_lines;
>> @@ -1390,7 +1440,9 @@ static bool wake_lines_fit_into_vblank(struct
>> intel_dp *intel_dp,
>>   
>>   static bool alpm_config_valid(struct intel_dp *intel_dp,
>>   			      struct intel_crtc_state *crtc_state,
>> -			      bool aux_less)
>> +			      bool aux_less,
>> +			      bool needs_sel_update,
>> +			      bool needs_panel_replay)
>>   {
>>   	struct intel_display *display = to_intel_display(intel_dp);
>>   
>> @@ -1400,7 +1452,8 @@ static bool alpm_config_valid(struct intel_dp
>> *intel_dp,
>>   		return false;
>>   	}
>>   
>> -	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state,
>> aux_less)) {
>> +	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state,
>> aux_less,
>> +					needs_sel_update,
>> needs_panel_replay)) {
>>   		drm_dbg_kms(display->drm,
>>   			    "PSR2/Panel Replay not enabled, too
>> short vblank time\n");
>>   		return false;
>> @@ -1492,7 +1545,7 @@ static bool intel_psr2_config_valid(struct
>> intel_dp *intel_dp,
>>   		return false;
>>   	}
>>   
>> -	if (!alpm_config_valid(intel_dp, crtc_state, false))
>> +	if (!alpm_config_valid(intel_dp, crtc_state, false, true,
>> crtc_state->has_panel_replay))
> This is a bit misleading. Someone might think intel_psr2_config_valid
> could be called with crtc_state->has_panel_replay == 1. Rather use
> false here.

Hmm makes sense we are checking for psr2_config_valid() only when 
crtc_state->has_panel_replay is false.

Thanks for pointing this out, will fix this.


Regards,

Ankit

>
> BR,
>
> Jouni Högander
>
>>   		return false;
>>   
>>   	if (!crtc_state->enable_psr2_sel_fetch &&
>> @@ -1643,7 +1696,7 @@ _panel_replay_compute_config(struct intel_dp
>> *intel_dp,
>>   		return false;
>>   	}
>>   
>> -	if (!alpm_config_valid(intel_dp, crtc_state, true))
>> +	if (!alpm_config_valid(intel_dp, crtc_state, true, false,
>> true))
>>   		return false;
>>   
>>   	return true;
>> @@ -2371,43 +2424,10 @@ void
>> intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
>>    */
>>   int intel_psr_min_set_context_latency(const struct intel_crtc_state
>> *crtc_state)
>>   {
>> -	struct intel_display *display =
>> to_intel_display(crtc_state);
>> -
>> -	if (!crtc_state->has_psr)
>> -		return 0;
>> -
>> -	/* Wa_14015401596 */
>> -	if (intel_vrr_possible(crtc_state) &&
>> IS_DISPLAY_VER(display, 13, 14))
>> -		return 1;
>> -
>> -	/* Rest is for SRD_STATUS needed on LunarLake and onwards */
>> -	if (DISPLAY_VER(display) < 20)
>> -		return 0;
>>   
>> -	/*
>> -	 * Comment on SRD_STATUS register in Bspec for LunarLake and
>> onwards:
>> -	 *
>> -	 * To deterministically capture the transition of the state
>> machine
>> -	 * going from SRDOFFACK to IDLE, the delayed V. Blank should
>> be at least
>> -	 * one line after the non-delayed V. Blank.
>> -	 *
>> -	 * Legacy TG: TRANS_SET_CONTEXT_LATENCY > 0
>> -	 * VRR TG: TRANS_VRR_CTL[ VRR Guardband ] < (TRANS_VRR_VMAX[
>> VRR Vmax ]
>> -	 * - TRANS_VTOTAL[ Vertical Active ])
>> -	 *
>> -	 * SRD_STATUS is used only by PSR1 on PantherLake.
>> -	 * SRD_STATUS is used by PSR1 and Panel Replay DP on
>> LunarLake.
>> -	 */
>> -
>> -	if (DISPLAY_VER(display) >= 30 && (crtc_state-
>>> has_panel_replay ||
>> -					   crtc_state-
>>> has_sel_update))
>> -		return 0;
>> -	else if (DISPLAY_VER(display) < 30 && (crtc_state-
>>> has_sel_update ||
>> -					
>> intel_crtc_has_type(crtc_state,
>> -								
>> INTEL_OUTPUT_EDP)))
>> -		return 0;
>> -	else
>> -		return 1;
>> +	return _intel_psr_min_set_context_latency(crtc_state,
>> +						  crtc_state-
>>> has_panel_replay,
>> +						  crtc_state-
>>> has_sel_update);
>>   }
>>   
>>   static u32 man_trk_ctl_enable_bit_get(struct intel_display *display)
