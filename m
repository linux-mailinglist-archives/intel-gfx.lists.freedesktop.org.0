Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBj4KciE12mwPAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:51:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1A13C949E
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9D0010E785;
	Thu,  9 Apr 2026 10:51:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bymF391r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA96C10E785;
 Thu,  9 Apr 2026 10:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775731910; x=1807267910;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n6EZJsPR/5M/ng6Dyfr13KZHPOxaWURGqcZZlC9AIdA=;
 b=bymF391rOkgdK/XZvGke9GAKQREoqT4LiJY1FyvFp+D8bQIA9py0voDq
 fO/exl3FplEbPt9hs5PVPbHvSsq9OyJnxKIikL/4NJgNhKG86ZwuiDUiW
 QyZWp3KTFsdAJExahkGf6P0ZeqRV3g9E71WZ16bw1eGQ4U9g+odpDxJ25
 liq+uY6zvdkD6zznM+LhoVRttEQr6uopsQAc1pTyAJQQ/J5QHzaTCnsbP
 epNXWZyeuGYHF1WreYLQNURyFWE6WzKlh294ATqrh77P7ppi4bWn4Vmf8
 5/WPOgptRePoN4aLbWAgUrPlGHHArZS1Ah04fQQ4MGkPRrBjNTic3pDv3 A==;
X-CSE-ConnectionGUID: Kn5Zb+XqRj6gGPlzolKFNw==
X-CSE-MsgGUID: hIyUujIqQe2BLJjTjUkUKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76612584"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="76612584"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:51:49 -0700
X-CSE-ConnectionGUID: IP3eKBC4QUi6yoKj0flx+A==
X-CSE-MsgGUID: SQzHE9iITh6ANFfRcgbjlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="228668308"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:51:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:51:49 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 03:51:49 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.47) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:51:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QmltLkAzLybYZx8miOdv43aCyt7/qrJd5CT2xhtuFirQf6U+rTxxw5oI6TskDHqqQzIylPx9y///5GM0nuRtShxUzBcq/k7EOS5hmLlL6bMtrvRCQdvuVGotJ8DJnzKaHYOth7fnlryn+iTrbp8/WvLnI32M5H9aWCpFW0NLfNwxgqMxaLCs0aNUOtf6MEGIedTHJpaRL0dttCOgs4OLqxs3PiZx4Xd0h7I5QUex1sV0d7c8dGNlDIMGNY7Jq47vM801nuvM2DTzFBzW5xqr86t2xkMHLgRcKAJAUoYCjwxOADBdV4pwaMCU2W1M1KLKPtY9UhxdKxyEBNOp48Ctag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zGA6GCVfVCUEh+8hUP2wHRllT/NSavkBK0yvDbqkD4U=;
 b=L1gVMEv0kYvc5D6/Cl4yh0IJttI5v7s/H9z94eS2yglwe60IVY8yW+EHWLLBGJXLoHhmIFTjm23cu17Sv4sYfyddU/B4b0sTl8HnGXtUWNr9WJNLKmNNk3wzpONkkLZlKlienpUAcaWhNPjwJgun3Jtw69AX13uEwf4umACyqDj1ddWd6gtuo1+fHFhHVNj6+AHGcqbhhdf7ynqIj31Uw8mTqLORuVTI0BPF6z+NwV0arB5v+SoKN0qvo/Nbqi1fo/UH5T1/WzweCripjUKBkAQx1pMuaFpSIDKuEfSwvLCQPsuLVcp9Z0mCZbu3T3IAO5xOsAlRuTdWYjEtC4w1FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6507.namprd11.prod.outlook.com (2603:10b6:208:38e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.42; Thu, 9 Apr
 2026 10:51:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Thu, 9 Apr 2026
 10:51:44 +0000
Message-ID: <58ecede7-5cf9-4000-9635-2d4bbeb269c2@intel.com>
Date: Thu, 9 Apr 2026 16:21:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] drm/i915/dp: Restructure the sink/output format
 selection
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>
References: <20260409101539.22032-1-ville.syrjala@linux.intel.com>
 <20260409101539.22032-5-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260409101539.22032-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0143.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b9::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6507:EE_
X-MS-Office365-Filtering-Correlation-Id: 7285e157-4254-40bf-9c5e-08de9625fd3a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Pznpux0YUUMCSt+hofwG2e3vLFLKSGPrdJxdqOSmS8X4Xcu7ZCfmuV6VM+iknVWDL9VHceLvHtun+ZFQqoSGwfbL6ksoHglNNW6r/oJSr2CuMuTkPxCmSXzcYi97QQgPfkQImJRhkPEqwIprl9EyIdHyrqKkbc/L2O7H1K/XTwrlSvV7dO72e+yNv/o3g9O+3x5//DR8DqdHHmc/fA/tTd6ZbQE0FNY50SP8tNfNSxw9K+23hnRkBICjTMcIQVXBvvU13/XxuTxUnA13e1ZpqiX78dS8aUsbqP7rCIZUsk1uMsouacEYGnNA3yp9GROBt7RX4HVMwaLmyIzaSRZiNKINa7p+LbZNpUCEBr1oEigZaWnsnILWReRSCXr0zrsGJYK7tNPW7+gpBWFY1SdowcjAF1SiSIrq+ae2QiBjuv+5H5ZUtPRVtnjUWnFv/Zs/+a1Qef4KiQPR792oyy07rBsQtDvG/bi+LOcycyhGllyyldMVbvKoin+leOyScNmJg2tQpNFt9W7B9IrXvfCaVjUMJQjnLVyyuNuHUS+6Fn4COnSpz3A74+7okFsjA9A/gknGnY+bNSckyIf0061onWLJlsv8ekqHFOVrO+X6eur0h4oN6fbcnvRbtHXa+Hg/EFK49tg5oN+bm6uf2ipyFKNwB8c60dXMFj19bL2sf+SrF4xUkfUWWxFFPMUD31eN16W0QsbvsxQ5kWKdpVyv8NW812H0A9AEOpDKDf9GIX4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHpJUTI1Y3NBU3F5elJ5R1FlQTlPd05Rb01aQ2JrOVdiRS9lMi9ZME9SS0Fk?=
 =?utf-8?B?RlVpUzNseEU0WWEvcGozcVlFTTlzeVg3c2lxaTM1ZU81WGdXbGJJdkRDcTRR?=
 =?utf-8?B?TnkxNmxOVUpNaTBoSFl5dEZtVVVOQzhEbDJoQTIxWE91cklhYWNTUzNLeXJE?=
 =?utf-8?B?TExQMysvR1UvdFFWWkM3cUorZERmUURnVnREbXZaUU94WW0xaVpDRUE2NnU2?=
 =?utf-8?B?VDdNMkxKVUdPc3dDbCtONlBZdUtETjY4OS9DaFF0MVdhQXU2aFV5M3VDYUJm?=
 =?utf-8?B?Qnc4dnFqWWthMUNDY01YUk01RElvVEZ4a0xiZmRnMlMyMmtvUURPR1dTS1Bx?=
 =?utf-8?B?bTB5MUd5S0dHNE5ZYWJDS1VEWkcxY0ZiUENkUm1laFA5OVkwQ1NqeHhHaWtk?=
 =?utf-8?B?Ym5hSkJ1WHdwMmZPWmhOQ2J2YmRxTkhyNWg3eTRsakN0WXdhSXB3K0J6eWpY?=
 =?utf-8?B?MThiQ2pPdExTQTJMaHlTSVBYUTM5U09YWFFoMEFXcGxmNUNWb1cwV0hLdWRv?=
 =?utf-8?B?cXJwTzVXbDd2R01kZHA2Wm5jcVR2WTBLd1Bkc1lGTjU4aDQ1TVZ4Vi9rSzFV?=
 =?utf-8?B?cGJJMlkxaCtXYU5LYmw5Q2JBT2ZkRTA2bWJ3RkQ4eHAzWS8ybm1ySTgxNk9q?=
 =?utf-8?B?cU9JRlFRaVU5RVlLeTdLUE5TWHNOL05qeUV3NjZTa1BPT04vcmdnV2NKbDk2?=
 =?utf-8?B?bDB0T0lZbXFRRFY2SFR1aVErbFdiRzl4R0d0OVNzR2JSbEhLQTVldHpqbmU0?=
 =?utf-8?B?V2Q4VmRzbHdpZ24veTNkRVFnWTQxNStOL0huTmVzakcwT0xCRTBRSU1nVDlw?=
 =?utf-8?B?SVhQNjZrWldxeGFRcGVQcWNhVlBRVmFlTWNMTHpuVTRwQkYyV0xKQU5ZUGtx?=
 =?utf-8?B?UDJYZFh6WmNUU05tUklTTmVNMnEzdnQ3TDRWOXNMR2pncDlvN2hvOENuQjVx?=
 =?utf-8?B?Y1hBTnFTN2lFWHg0aVpqSDRuUGRxcVVmRmtmbHZhMXJjVGd2Ni9sSmZtY0tV?=
 =?utf-8?B?Vi8zNFlJL3UwOWlnNVRGcko5NjluaXhsTmFTNVpwWU1hV2V0aHlKcWt1OTdZ?=
 =?utf-8?B?ZjZLZ1g5eGQrUEtBN0NMN3JrcWdmRWR5T2pTVjY1eWg3YlRGNElBR1FqSTdK?=
 =?utf-8?B?QzFLQ1VHVFdIS05uT3o2RUU3T21SbnlBdjFVMnZMMzh1UldScjcwT0g3K2Vp?=
 =?utf-8?B?bGVpMVVPSEduVHpLSnpzQklhcmZ0UDdyWTZoWDkrcm8wZUlMaU1NMmoralpX?=
 =?utf-8?B?T1MvTDBJaXk3N1FYaDc5azdLK0o4TTVoc2c1aURMWDYxQWJIcWVnejdjaDZp?=
 =?utf-8?B?OFB4SWFiOForaWUwNXBVdEllUThQOWFWUVlCN25wNjRoV244U3A5SkZacFIx?=
 =?utf-8?B?VEZ6N1k3T1lNSzVxaCsxQ0JHRUVKNDA3YitjQlhST1doUnk1aUtMSUI3eTEv?=
 =?utf-8?B?R0RWZmppaHlxalB2MzV5TFZWaDRiNXhISXY4VTN1YWlUd1RIb0J6aDNSV1E0?=
 =?utf-8?B?bXgyeHdzeUJyRzl2cktaTWljUFdjc0lPMVkyb1ZJTzlGZlNCRDR6azNRTzlG?=
 =?utf-8?B?bnl5OVNXelIvTHFTdHZranpYanJHK1NvUnlUT2dtWkkvVUdDMC9tZ3Qrdkor?=
 =?utf-8?B?ZGUrTndXL0V1dy9QZzZLTFJ1MEpqQzJINlByY3U5SC9DcFA1eWJVWlprZWt1?=
 =?utf-8?B?V0l6MWhOOWt2Tmt0Y2R0Zy9VK2pOemczWXZ3RTZiQ3B6K2pFT2lYcm1uYzRP?=
 =?utf-8?B?R3p0dkR5L1NQdVRzbVVFQnBtZ3ZMSWN1QmlZQWRPWko1WUxUMFB4T3dHSkdM?=
 =?utf-8?B?NnkrbnYyNmVNYklETzZPcGZtRzhHQlJKK1c3d3Npd3Vya0hLQ2hOSE9IUGNY?=
 =?utf-8?B?N3dLRHpEWE96ZURIa2tNcWhxVUpoWGUrQ29CVis1K29NZkhObmZhYkhCVFJp?=
 =?utf-8?B?cmJXQmRrSjVrdm5wNThJNGRmYmh4SktQUFdQMWJwNENDeUFkSGZKczZjaSt4?=
 =?utf-8?B?WG5VTnhCZjRUTlNZdi9KU0RESngvdnQyMGxsNFQ1MG5QUGJaNXdrczgwcnh0?=
 =?utf-8?B?ZlBJMHYyK2ZubkRCd1ZMb0IwZEE4RkJMVHdvQTZjcHFZTDVlUGpUZFUxTjdX?=
 =?utf-8?B?bGk1NElxQWFGUHg3RVNRclBKaDBiY0tXOWg5MkFpdkJSTWYrb0NGelAzUW9m?=
 =?utf-8?B?L1BrRkM3RmZzNnVlc0c5eno2aFhMNWRrcGFidFpuaTJCQ1NTZzVlcWFwRmdG?=
 =?utf-8?B?WlRReFFYY2ZJakVPYWdKZStoR01tNVVpN3h5MUFTVm9vRDlxL1psQUNQRCtF?=
 =?utf-8?B?QTNkWkdzeVRRaVZiaHRCRGtxalBCc3NTU1FxWUZxUHhNVEFlMDUvcktKYW1U?=
 =?utf-8?Q?guF/e8faReWTaamA=3D?=
X-Exchange-RoutingPolicyChecked: RLcmSV55EH33kU4qrZMjua+9N8kxESqnEoV0PAoTgQbclxQMNpSKtWNJsDUWS4UrroyBr2sQGuVn11wODHqG7PhHPAffT9HDxZmyE259uSf7Q/vH+VLMZDDYa/CfOFAXezZ5iDztENplHUqZ5fDSNyfmXHdeGT+BN8FfHbys9bXp0QJATWOljJhgFTfGUIKynLYMJggHGQUnSnMbLyqDSVwW/PQ5DI2HtJNYk10cXcs7mXTWdCUXtohwmH5Y5w8fluVlHxjdQIRaixOx1eTituYFgu8iCu/nSLmoxFxHkg+cN6L9MYvFm4TnQIbMTmwEpRxIoCeWlFWdFOtXNqA3Dw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7285e157-4254-40bf-9c5e-08de9625fd3a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 10:51:44.6330 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O4Hwdz3W0e+Lz+fJnec5yf56bbuZU+8aptkU5GFpcJorfuixF3RgCzDOlpujSNBQfpf9+tJUl/kAdqM4AF7n0VClx8lrfJVqJB6H+e60Ing=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6507
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
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
X-Rspamd-Queue-Id: 3C1A13C949E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/9/2026 3:45 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Restructure intel_dp_compute_output_format() to resemble the new
> intel_hdmi_compute_output_formats().
>
> Again, we basically have two main code paths:
> - YCbCr 4:2:0 only modes
> - everything else including YCbCr 4:2:0 also modes
>
> Take the exact same approach with the DP code, making the
> format selection much less convoluted.
>
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 98 +++++++++++++++++--------
>   1 file changed, 69 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b8b6d62fb275..ed5841f224ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1379,6 +1379,28 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   	return MODE_OK;
>   }
>   
> +static enum drm_mode_status
> +intel_dp_sink_format_valid(struct intel_connector *connector,
> +			   const struct drm_display_mode *mode,
> +			   enum intel_output_format sink_format)
> +{
> +	const struct drm_display_info *info = &connector->base.display_info;
> +
> +	switch (sink_format) {
> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> +		if (!connector->base.ycbcr_420_allowed ||
> +		    !drm_mode_is_420(info, mode))
> +			return MODE_NO_420;
> +
> +		return MODE_OK;
> +	case INTEL_OUTPUT_FORMAT_RGB:
> +		return MODE_OK;
> +	default:
> +		MISSING_CASE(sink_format);
> +		return MODE_BAD;
> +	}
> +}
> +
>   int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
>   {
>   	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
> @@ -3338,41 +3360,59 @@ static int
>   intel_dp_compute_output_format(struct intel_encoder *encoder,
>   			       struct intel_crtc_state *crtc_state,
>   			       struct drm_connector_state *conn_state,
> -			       bool respect_downstream_limits)
> +			       bool respect_downstream_limits,
> +			       enum intel_output_format sink_format)
>   {
> -	struct intel_display *display = to_intel_display(encoder);
>   	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>   	struct intel_connector *connector = intel_dp->attached_connector;
> -	const struct drm_display_info *info = &connector->base.display_info;
>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> -	bool ycbcr_420_only;
> -	int ret;
>   
> -	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
> -
> -	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
> -		drm_dbg_kms(display->drm,
> -			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> -	} else {
> -		crtc_state->sink_format = intel_dp_sink_format(connector, adjusted_mode);
> -	}
> +	if (intel_dp_sink_format_valid(connector, adjusted_mode,
> +				       sink_format) != MODE_OK)
> +		return -EINVAL;
>   
> +	crtc_state->sink_format = sink_format;
>   	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
>   
> -	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> -					   respect_downstream_limits);
> -	if (ret) {
> -		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> -		    !connector->base.ycbcr_420_allowed ||
> -		    !drm_mode_is_420_also(info, adjusted_mode))
> -			return ret;
> -
> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> -		crtc_state->output_format = intel_dp_output_format(connector,
> -								   crtc_state->sink_format);
> -		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> -						   respect_downstream_limits);
> +	return intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> +					    respect_downstream_limits);
> +}
> +
> +static int
> +intel_dp_compute_formats(struct intel_encoder *encoder,
> +			 struct intel_crtc_state *crtc_state,
> +			 struct drm_connector_state *conn_state,
> +			 bool respect_downstream_limits)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	struct intel_connector *connector = intel_dp->attached_connector;
> +	const struct drm_display_info *info = &connector->base.display_info;
> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	int ret;
> +
> +	if (drm_mode_is_420_only(info, adjusted_mode)) {
> +		ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
> +						     respect_downstream_limits,
> +						     INTEL_OUTPUT_FORMAT_YCBCR420);
> +
> +		if (ret) {
> +			drm_dbg_kms(display->drm,
> +				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
> +
> +			ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
> +							     respect_downstream_limits,
> +							     INTEL_OUTPUT_FORMAT_RGB);
> +		}
> +	} else {
> +		ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
> +						     respect_downstream_limits,
> +						     INTEL_OUTPUT_FORMAT_RGB);
> +
> +		if (ret && drm_mode_is_420_also(info, adjusted_mode))
> +			ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
> +							     respect_downstream_limits,
> +							     INTEL_OUTPUT_FORMAT_YCBCR420);
>   	}
>   
>   	return ret;
> @@ -3547,9 +3587,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>   	 * Try to respect downstream TMDS clock limits first, if
>   	 * that fails assume the user might know something we don't.
>   	 */
> -	ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, true);
> +	ret = intel_dp_compute_formats(encoder, pipe_config, conn_state, true);
>   	if (ret)
> -		ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, false);
> +		ret = intel_dp_compute_formats(encoder, pipe_config, conn_state, false);
>   	if (ret)
>   		return ret;
>   
