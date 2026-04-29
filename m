Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cF0/Ofm08WmjjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 09:36:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CD24908CF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 09:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FB810EEA5;
	Wed, 29 Apr 2026 07:36:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E09GbrrG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA6110EE9E;
 Wed, 29 Apr 2026 07:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777448182; x=1808984182;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=+Q/wuLGDpiXycnPDLMaDib1H4TEGnA2mCmPmubE5Kf4=;
 b=E09GbrrGwLEWW+/5ruxVfqU70nb9xQ3MDAqoFuOJXEKokSKVQpi3jqQj
 ypqAlL5FhDLDI0ckl5TJzjm0T2LiFzV2nYSuG8eqEScPBLCIRb8wFsbxm
 Rj0mEs0q/+iXBUVobc5NvQuQQrCSWb0+6/4yrl5nzzrjq0dvbgaH2kS89
 h6/JKc6tZAsX2Mxky8V8+Q1veL9T40q6AbL4iBhGZkJVgGVRcD9zb0lQt
 hlO0atxmyLZLOIC1QhebKCNlxdeAGcWWrtFv9GZwTv4IpWJqT7YtBKYFy
 h9hOE9LvhP7z/h6/AC+D7Skhyfa7r+a6zSFa4R02z3JH+S60ktHtGjgz7 Q==;
X-CSE-ConnectionGUID: lPk+h/WtQQue7XbmL8vQzA==
X-CSE-MsgGUID: pqv8Yj9lSguPKVzyu02nTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="103825853"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="103825853"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 00:36:22 -0700
X-CSE-ConnectionGUID: zVwLuN4MTAWq/ax4SHmM+Q==
X-CSE-MsgGUID: bBXRGWIRS/W5jHZUIKbiTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="257745709"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 00:36:21 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 00:36:21 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 00:36:21 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 00:36:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OAR7e/IkXV8vgePfRQ4Frk1TbAnOLwp7lhBMhAdb63TExJ1oF89tuNw3DtvshNUTOkTw8GnNb25glgjEq6lrWq96FwOlNGGLJ4fww4WkFhmKjl/kacQi3kjfeBYmemEnsApIJs9il/VE3JAUYUqqtcgQks6+LTqKuTJx/ht9AhCiMS+AefeJ9t1zQjbqaH6jIvWjFt0Khr6YR/7LCBU1eFxHAv12Hf/XDSwJwj5jlXf9mNH31WECUS78HvLh2XLJpNFmaq21rS5JjnNmMkKXnwU7mClGdbj6v+PLCEqSR6eFPWygWXBc4KekansheGkHKrwwBtPJ2lCnq+0GOcCHjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NG8tdaZQIvg6YCO4mK1APP69oszK/1FZab/nS751Duw=;
 b=oXMVkuTVBDa8Inw4Vn1x0hXncoXObtK9wVBuybjZE5G0NwW27gEl+BcT9JMPd7HlZCBWY2swphapFBU3GGHxsoMr+DgtxUlJ6Mjf+UHKz6oOxa3rOfsfXq0x+dWKpqY/05/EXK+Gqa0LwN841yY7pRjipGoVrxwkNn9I3LfnZJlJ22HpaTYViLxKxQIbtxt7N/2cJU21n3iLtROG6E3FILRN9bi18bk39fXpiE6HRxKYAuY8BHGMlNisnS2g8C+ZWAoeFO6RdmGQkZRC91AAUehk7AZKLaLPWrhu4HVXhJT0RfNyjdB8fLMiVw8VQJQPdjhhAylWm/MZrGiedbZxDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Wed, 29 Apr
 2026 07:36:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9870.013; Wed, 29 Apr 2026
 07:36:19 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 101/108] drm/i915/kunit: Add DP link test stub
Date: Wed, 29 Apr 2026 10:36:10 +0300
Message-ID: <20260429073612.1743413-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-102-imre.deak@intel.com>
References: <20260428125233.1664668-102-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVYP280CA0035.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:f9::28) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BN9PR11MB5228:EE_
X-MS-Office365-Filtering-Correlation-Id: e91be001-de40-4114-63a0-08dea5c200cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: FRefzLtm2gBgI0csD2BEdbc5GXl6XDSByLkapwkbG9G6XxNhIBR0Pe5WuN3uyaJL5+9m4HcwSoUF0SadEPDNbw4Yq2HNvM8zxLE0WsCGJnkZIL2xDecTaiiBLGiqGVb9yhOhjbWxxUXxUFc7rPCGWvOSi9Hq8nbXszlidqTVgGehaEnqEmiQHvLnZH97y18ZcmgGo3sTUobJm6P9cHETp9gxDEw12HZNqKGvkStTJWKXK3i+YJmAFCZ1YT3tfQybkqBYt3RGQFo9nQVKRiNBaScBDLYHVs7uZOmstUq06XQtOFt/tdR9JCuy0Ya57qiAI8pZLPnpetHRqZp4HjOFKm1R+HQu3qZB4oHOgXABrEoL2yWggH+Q+rGk3PjC8Qgrw21baQr3RWk2okoOn1G7QDApld+snibLa+MdLeLb8+uChK7TNFMryuMMCOn0LoBydTN/kuZBcanQVWXpCOqC76FK0JPyk7Jbc8rFK+PqOGZCmTm2+J1t78fliH2oWtDYM3tMUYxBtQuKw2phvLsIGTSh8Me+63E+YYUUnZgXH0vYhwLsXwtc54sBCKEuI11ZM9ko+ZL4Uy1E4NhfDH6Ojz99QU4baQOxsRyiSrEoi7MgNZ6mFxDPDfPXDu9rJqf7s8ma9Mi/ZAVw619qSXqqJYFg9fHQI6eNRHH9FiZqpaFmLSX0r6ZPuyhHtDz6wNGMuT49L1wuXsc488g3Qx6Xp+yoTIiSKnQD5/j6oBGRGVg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTJxTmtpRWRkRmdLM3ZldC9nK1laOVN5MzV5WnVUSXNkTDVmQk9KSzFpdEM2?=
 =?utf-8?B?TDBhS1h5Z0prRXNoUFpwQzhWVEFNMmZDTXFvbFZoWDhZNTFYRlJtTG1TckV6?=
 =?utf-8?B?S3ltYVdEVWtrWS9VcUo0M1UwSnJqcWVwZUthcG1ydzZPVzVra1ZtYk9CK1FR?=
 =?utf-8?B?K29mU1RiM3NnR0Fid2lkMDJ2OHVPd1hqZ1dIRzZsa2lpZFA2cyszM3Z1LytP?=
 =?utf-8?B?Tm1sOXFNZzRsZDdHT2JOMFdHWjlGU25JaFVnK29NQTBtczcxQmQ0OW0yZk96?=
 =?utf-8?B?cEwrRlNJNjdveTAvelJRY0tXdzlrRTZjTTkwK0V4S0tEYXFMNUVEUHdaUEE0?=
 =?utf-8?B?bm1Uc2pVQm03Q1ZVcHhVeHR2V1FLZWhtbnM2cW84UzVUZFZiTUpNdjRWQXRR?=
 =?utf-8?B?Nkw5TnNlU3NoYTMvWTlyRit3MTVXR2pEUUdwdFFGa29pbS9ESUNWYlJ4dU1K?=
 =?utf-8?B?RDNCRTZJR2JObTJtWVh6dWxaeGlPaWQwb0lLYTF1cXVWZlVqbkRiMjdLZDFO?=
 =?utf-8?B?dzhzSStWdktDMU04elEyVVplUFpzRXdsSFExZjFRZTZlVWhKOE9wNEM4SU1R?=
 =?utf-8?B?ZDU4c0dpQ0VTTGxNR0IwUzR2d3I3eitIT1ZKVUZmU3UxTFEyNklZdjZIc215?=
 =?utf-8?B?QmVhQXkvMHpqaWtOVXkyVDRhVGljOU56aWdKYUJhTlBxU2VxM0NLSGd5QTls?=
 =?utf-8?B?eS9icWcxZklGUytwWmlYWVBkMnVUVUhLbEhGSFI1aG4xUk5yZVloTXZDc0Ux?=
 =?utf-8?B?MHJTZlpONmJmaDk2YVo5SzJ2TU1sNDVLYTc0a0hEdldNNlVhQzdsT0xKNDQ1?=
 =?utf-8?B?VllLckxFbzhybHdMWVF3Y1RBbVBuVEI4aGhVNk5Qc1ViQnZobjQxd2RLelBj?=
 =?utf-8?B?WHlnOGV6SmpreG5HNHQ5T013QmlpNkRUME1DcWpmVWxyL1ZWT0VuNTMyaGVo?=
 =?utf-8?B?bFJLdmhDMlpiYmk2M216WktoQmlkUWpubnpxSzVGcDk4ZjVjOVNXWWJ6cWIr?=
 =?utf-8?B?R3JZc0grWUlUZFRuZFNoUWF2OWJQdjdlbk8xSTVtK29MTlZBNlNIQTlyRmFz?=
 =?utf-8?B?WlZTaTVVWmJFMlNrd1E3MVp1V1d5ZGZVVHE0UVpvakRmTFhtcXhvUnlCNU0x?=
 =?utf-8?B?QUNDVWNMOHJUeTNSQnR4U2xENDZYalpIZEFtbk4ycWJ1ZTJVV2Q2OERHeTVs?=
 =?utf-8?B?YmxPRU5vQURZemREbnFBOVRqWU5mOVgva2dDQ3IvWUNaWlpWcDNVVjhUS2pi?=
 =?utf-8?B?U1c2d05sTWVyOGJtczdXVjBlc3BySlBWa092dEtKcitQaGhoUzFKSkRpb0Jt?=
 =?utf-8?B?ZXBlemRLV3FObzlkOXEvbjNYQ2RZT24wK0dtTlZUZ0tCeDJrWmF0ZXBYRHpE?=
 =?utf-8?B?cXNGRXZGOUh4UzI3dkVGc1UxZGxZRGczUW9FSCtRT1prY0NHeURHTEZ6VWxr?=
 =?utf-8?B?L2RDZEJIMEo3WHRQWVVTdVVRZ2ZheG42ZWdQUzhNTmh4ZG9yWHFVanVWVVFu?=
 =?utf-8?B?VUdEVG92TmpmbWJFSmNjc05BSDB6VGxSM0dRZXV1dGsvMEowRE8zYmlKd3V0?=
 =?utf-8?B?MzRGK1FUNnNUa0RWUklEMGkxeHV4c2g4MHV6OG5YcWtiZ00wOERnL3VqMXJa?=
 =?utf-8?B?V28wV2xzMDl0Vi9LaEZMUmxpODBSRkZrT3h0RWhXMFBOZWh1bWpkWGg4akxh?=
 =?utf-8?B?VEMxV0NJa1dYOXJGRHBUY1hHWnVUMnRhRmprS2c4dFhxb0lKb2pHN0o1VDIv?=
 =?utf-8?B?WTI0OFI1OWFFbDd5S1lnbmR5OGhUTHpxN0VCYmVBRmI1NWdNSE1NMncyaDdW?=
 =?utf-8?B?S096dnZPYUhlYmFNRCttdlpEcDY0aEdPVHg5WnJsSzdIcytlVlVLRU4rMnV6?=
 =?utf-8?B?TVdRYy9LWVJnVmlOa2NlcmNIdTdiQ2owMFBZSnlxQTZ3cTJzSXQzSUVYdXJl?=
 =?utf-8?B?M21wdEtuUVdvOUxySHkyWWVyQ09MREwyNGhVRjkwYUw0ejhoKzZ2OFQ0dXlZ?=
 =?utf-8?B?aktxSUhCZWsrNk5XaWV0SmhaemZnUjlMamxmbkhQZS9ZTStUeGwxdllBTEFX?=
 =?utf-8?B?eW4vajZKNWtCNGp4cFlLWnZERUYzcTVTaHh0ekgrd0dFQS94dmNXLzU2SUhW?=
 =?utf-8?B?RTltZkhnUE0zWmpDR1BNKzRtRHVGTEFNVnFUY0Z6RVcyZGdkQW1kWDBQWFJj?=
 =?utf-8?B?bU9UWm9HWkptazJaNmFmZG1oZmluaDB1Yk5waEo5UXlqekpmYjJDNDRaWGNy?=
 =?utf-8?B?NzBSajZ4LzFVM3lGMW8wd0h1OHMvS21CaGE3ZTQ0N25SbFZNWExwZzhEd3dx?=
 =?utf-8?B?MmlVOEdxRmVseklpRUR2SGpncGVEOGFjOEVKYjBreTc5d0lybzVUdz09?=
X-Exchange-RoutingPolicyChecked: Mw+/oMg+Xh0yF+aPewCcEEe6LI+Je5DcfxnmyU1oi8/ckQBkbs+45gkgw2h2+vEeox2qeYjgNkHTgknAFeAnFzpir83lYe7O9kpYiAJ8qFMkmpiFw9FoUwZdlOs4V/ftjecle36fTyWekCRZgpJ3VKQfDjcYx0hAWUCXmHkVG6VBhG5f5o6hyIiJYoH2uZ1rngMmUvrwQBZBxfGSx5J6+153Dp5bk/+cxlpcqmmRa0E7lbcSNdqOF16OpMgtoQIiHVgJA3TpsZqJLAeqmYxKYiSIZyxjKsi//9m+fMWzj5Bri5dRx4l5PcfwSZVIKJwB+7BoihuZqcWonsyiNeEMng==
X-MS-Exchange-CrossTenant-Network-Message-Id: e91be001-de40-4114-63a0-08dea5c200cb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 07:36:19.1376 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pd7pRE4rpyY4ppu1xUtGAG+AQsjGKw6KD3NZctFGiH1xmegQG+pgRPu+AkipB1huTjvRbfC26+aPF4YhbeZxJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
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
X-Rspamd-Queue-Id: 44CD24908CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add a Kunit stub test module for DP link test cases.

v2: Add missing module license.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  2 +
 drivers/gpu/drm/i915/display/tests/Makefile   |  7 +++
 .../i915/display/tests/intel_dp_link_test.c   | 47 +++++++++++++++++++
 3 files changed, 56 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/tests/Makefile
 create mode 100644 drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 0c04c6d9bb13e..ff2b22271454b 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -385,6 +385,8 @@ i915-y += \
 i915-$(CONFIG_DRM_I915_DP_TUNNEL) += \
 	display/intel_dp_tunnel.o
 
+obj-$(CONFIG_DRM_I915_KUNIT_TEST) += display/tests/
+
 i915-$(CONFIG_DRM_I915_GVT) += \
 	display/intel_gvt_api.o
 
diff --git a/drivers/gpu/drm/i915/display/tests/Makefile b/drivers/gpu/drm/i915/display/tests/Makefile
new file mode 100644
index 0000000000000..ad250974160f6
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/tests/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0
+
+subdir-ccflags-y += -I$(srctree)/drivers/gpu/drm/i915/display/
+
+obj-$(CONFIG_DRM_I915_KUNIT_TEST) += i915_display_test.o
+i915_display_test-y = \
+	intel_dp_link_test.o
diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
new file mode 100644
index 0000000000000..62e1844605ac5
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#include <kunit/test.h>
+
+struct test_ctx {
+};
+
+static struct kunit_case intel_dp_link_test_cases[] = {
+	{}
+};
+
+static struct test_ctx test_ctx;
+
+static int intel_dp_link_test_init(struct kunit *test)
+{
+	test->priv = &test_ctx;
+
+	return 0;
+}
+
+static void intel_dp_link_test_exit(struct kunit *test)
+{
+}
+
+static int intel_dp_link_test_suite_init(struct kunit_suite *test_suite)
+{
+	return 0;
+}
+
+static struct kunit_suite intel_dp_link_test_suite = {
+	.name = "intel_dp_link",
+	.suite_init = intel_dp_link_test_suite_init,
+	.init = intel_dp_link_test_init,
+	.exit = intel_dp_link_test_exit,
+	.test_cases = intel_dp_link_test_cases,
+};
+
+kunit_test_suites(&intel_dp_link_test_suite);
+
+MODULE_IMPORT_NS("EXPORTED_FOR_KUNIT_TESTING");
+
+MODULE_AUTHOR("Intel Corporation");
+MODULE_LICENSE("GPL and additional rights");
+MODULE_DESCRIPTION("Intel DP link KUnit tests");
-- 
2.49.1

