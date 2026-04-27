Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKkNKM1b72m3AgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:51:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB8F472D0B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C044310E735;
	Mon, 27 Apr 2026 12:51:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aLfjEE3q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FD7910E74E
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 12:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777294282; x=1808830282;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=wWpQluZObChMkAV+14OFkjIDQKPzGloP4jzyA30KrsQ=;
 b=aLfjEE3qlnRJiTRAydR1Ph739xAb2FxLP6qqm4oQSWBStjVlHxRrr3G+
 B+Khk18Ba60B7pH/r1AU2ysTWgowbLg4DX0zCLia8sEx+Jy7bU8PLRn2T
 t1K0oGH+lDC1PPa0O3X2r4s2QRyV9g4KW+9Bx3ehwS+eDW3Sts3zFBjR0
 9U1XG1m6d05f7sP13zGwmsB1ZHOoAD3DnWkwxchQ5WWzWanFTHZ6qwUGG
 74TF0mFqFZRKh4spKdNvBY1hYkx5HEb98WWWJBkEPG6x2Bv5qCC7Unvfn
 fpQTaBsuXA+g+QJg39CT3+WiGyFtp/PDVeYsggwvnBCqByzpcSFPEJmjD A==;
X-CSE-ConnectionGUID: idyfXB4vRrqdtpg4CUHWuA==
X-CSE-MsgGUID: f2TBXeXFTreRmO43tQ0yEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="88777009"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="88777009"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:51:21 -0700
X-CSE-ConnectionGUID: /nmGA/MaTuCMKqBZGwbUug==
X-CSE-MsgGUID: RckUxwpiRs2tnmNbR9oa2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="232751265"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:51:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 05:51:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 05:51:20 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.66) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 05:51:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y3SzuxqeDGy1X/4dNgq2ZFEzfxEy9QLFTamBo43o74Pyxg/WS3wTKbXivjDwSyg7uaekNX6W4+DyqF0ru1vwpi8F/6d7QT9Gi7trDcfqT3MqQvdHFQLsolm38KMbKHzuhPYCVTK4eHUQewv3srm0OFIOXwnoE8jILm5F0T4VrkEqz7xy+8vLq3/ryWLQsyaFjdItkJihkhzxYD1Oid8730fDJl/RoPSTRnIv07aP4TZgo/nZS3msfvPrLkutpcsRszhtkzMsOmPf4GqQCszo186sp++ghFJzEzOb7mp92PaocNYr8QpdQWhkAiYGELhx+fTLQmllZIypJ6ToS7kRsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wWpQluZObChMkAV+14OFkjIDQKPzGloP4jzyA30KrsQ=;
 b=fIHLaLHprGCcexTivXFfrY6ncMqhZwxy8cm4Ugn8VRm6Y/t+EduOTYF0+0l9B9CjYliqoEXdWsAPuiDpcMTAvHjaRKI5/8v6T/Yazx/gtaSzUTEvY0Tip4MVlDkO4DJTarr6XDtDeSGXSoc3Oyzm8kEuhxJjkQYXNCjIx3WgQfRPEym2JQMY7RbcY1LjQ3SUNIKd98+k6xUpwyp3T/SGv8A1r4tpbVmC9zCAXpCa8AEDmvemspi+DMO6mlsrutKJ8+qYu9iELE304gK8SKrlqiYQj/p8tfjJ/FR3DYn85mzPYe6DL0Ixsdh+/7UpmQOajaWNKYKdG385R8uI0MZ2BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CY5PR11MB6437.namprd11.prod.outlook.com (2603:10b6:930:36::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.15; Mon, 27 Apr
 2026 12:51:17 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9846.025; Mon, 27 Apr 2026
 12:51:17 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 27 Apr 2026 14:51:19 +0200
Message-ID: <DI3Y8OJDXY88.2QYSAA88WIVH9@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>
Subject: Re: [PATCH] drm/i915: replace fetch_and_zero() with kernel xchg()
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <75ba7e77fe28617f027ae49a620df8b580cd1000.1777291964.git.sebastian.brzezinka@intel.com>
 <7d18b591154516efd9be14c643bd576678b616bc@intel.com>
 <DI3XYF0I8YPD.336A8XEBGNCDT@intel.com>
 <b7e7bf8c2f0946763f992dc06342e0bfaba98c90@intel.com>
In-Reply-To: <b7e7bf8c2f0946763f992dc06342e0bfaba98c90@intel.com>
X-ClientProxiedBy: DB7PR05CA0029.eurprd05.prod.outlook.com
 (2603:10a6:10:36::42) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CY5PR11MB6437:EE_
X-MS-Office365-Filtering-Correlation-Id: f4f1599c-cc1f-4ef5-7252-08dea45bac60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: dg66MZFb0hbEnm0/km02XIdSF64c5yFHj/tTBLSggC7l70ja4UIl6W5VCpqaHXt4Bg9cuIBweTYwG/8C9FuCVsUl+kLagJ9MVgLE2mSXKQD0jT1N69BMcFSvVtM1PCaZyEKmqU6OX+64iAtsUniUp9HxbHm3nZh65MLX81UysiYQbG3Luq46ajvYPAb1SNMPBAJBgK1/LIRVmwcjMstmKJMZwo+/igQSeFUDKsK2qE16eox/DOfD4PW0a/eoJjJZBzbXhoKVk75TYa+PxIWp3k4QLIB74cjjzeEvvuo1+I6O6yx9tefWwcmdKaZ2pPbV59Ts9Kxkgw0NJ92NT5cU0UWO4qPpR7StEaZxr+PrBS+ICO5gGVMu7r7Fm2ClJbOzatidP8W4F/Q5puVJUTWnKy3e35F/ziLKSLRY0F6gA1RDcI2wrPx/Ww2idfaeqaI34fh3afq3+IOdjiEVbf3zkDviNg95lRmFyGnxZ7lQ/kWqm9Q31arQmVWZFc4tBgJKoGmrASpZtFklsxrArsSsID66gXj+L/TlzeoIwumF1xzzb5KCUaPjDhnr/rMQHB860HDFkTX0CC1/pMF0WWRCoEGL/x9aUxVUsVOzXf54y9P1aToHEir5fgpbV9Wi9DLZetcfBKkRFWAtfv5ElA0AYhUh5budkx7EMiKlZ1v2jsPFZzYO5qSrKf3dS1CfP6dnFklIpU2szEpa9x/ThBrTwqOG+Ss7wcnlcZ3xfXpP/+s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2lDREhvRWxGdEdKdlpERnpZMXUrVnJYaVNHR21aUmExdGowcjUwdEtOSTB3?=
 =?utf-8?B?UXhBbFZ1dlZCc2Zia1NscWRrNnFiZGk1WHlXcFJtbWNpTUpuL2hYNytGcURQ?=
 =?utf-8?B?eitBK2g2Wi82Myt6ejhWdGp1V01kbHQ1Nk8vTy9Ld1IxbXJ2RXUxVlZvZVZR?=
 =?utf-8?B?dUYwSkIwZDFpVVFQWDMvY1Z5d2U1d1NzOGIrY2JXSEI2aXJoMU5pdkZycGNu?=
 =?utf-8?B?VjNyM2tqVWI1VHExTUhpZFZzSzVFTEhQL1dLWkVrUGwzeGowOVYzZE5ubkZU?=
 =?utf-8?B?dTFCVU1JTERHSXZOcm9mdWZQeGIrUTR6ekkyUzh1WGg4ZDF1SHBmUGM1Q3JN?=
 =?utf-8?B?MTZocXNHcFNWM1p1MTNMM0JjZm54MHErMHlBUWZyNVhLTjZsZlEweVB1cDhz?=
 =?utf-8?B?MlNJbDJYVXBCTUJYVTJ6NFcveHRua2Y1N2owL2dBS0pOUFJrcjlYYjQvaVpq?=
 =?utf-8?B?Q2RDZUxSMGdZaFJhR1RaQkFxbXNGbko5NVBqY3pvV2lTT1c4dk05Qk5ydzR4?=
 =?utf-8?B?UU1iOXJ4T25DSUJtWGlxeDR1MnRXYUVDaTl0RFgyejJhRW9pUE1KTjlNaE9o?=
 =?utf-8?B?SmxyMlhBLzJDZ3dVM1A1NWtnNlc2eUluYUJzb3QrK3hmY0hza1JicVdPaEk2?=
 =?utf-8?B?OGVVZkc5WWtldDdCT2ljbVlDS09rVE0rR2VnK3dlTHFYZEtFVUZFUmJEQXQw?=
 =?utf-8?B?RUVZd3dPa2h5b0tjaGUvZUNDdktZNG52NlFEbGVhNFN2SmJGWklNMGpMSHhI?=
 =?utf-8?B?QkJvaE1sWEhLOFhBWkthZ1ZveG1jRlVHczFHWHNYNWc3MWxmZitBUnpjemN6?=
 =?utf-8?B?U0RDTlZNUmVxdldnT1BGbE1vQ1JQelF5SzFWbmFIUHdvZW1RY0RUTGx1c1Iv?=
 =?utf-8?B?QjQxbTE0RTBnYThpWHZ4NTVqTmNVV0piRWU5Z0FkcXZ5cWMzZmlxRmo0cHJP?=
 =?utf-8?B?TnpYRlZwa3phU2x2K2U4MDg2Wmh1MlBCQ0R1V2ducHRnVEc2YU8rZ1JocFdB?=
 =?utf-8?B?OUtjTlBGSGI1UFZ1RytSYzdyUU5kUkEzbFVLNmJ4d2doa0NML0QxQ0U5eGx0?=
 =?utf-8?B?N1RTanZjbGdpd04vOUNmUG5HN0xJdG8xb0ViMGMwVU1CaUhKOWc4M1pTZk43?=
 =?utf-8?B?SjZxT3dyS0VrL2JYL3BlWG5WTENkc05RYmQ4WTU2RWs5dnQ4UlowMWtEM3ZC?=
 =?utf-8?B?SDJNM2ZUSDA4c2swYW1tL3IxLzZZMXA3QVArMWo2STV6dXpkc1gwRUtsaCt6?=
 =?utf-8?B?ODhUQ0dHNlNyQjFtby81dUMrelBBT0ZudVEvVGx3b3paRGpvbWxGRHBTWGwy?=
 =?utf-8?B?YmU2cTIzeGFoRCsvS0hXblFmWXFSTlZXRFlLYWdqU0NlWHFGU3A0dmcxT3hy?=
 =?utf-8?B?RG9CSUMyRXNSdThvTWhIQ1MrMWtrNlhRSDlKM0tYZWtKOVdBU3p1d2pOM1Zo?=
 =?utf-8?B?bHRpM3lQdjd4c0haUDY5M0R4U1lnM2ZGZDRqenpwMlpQdFYyY1lwZnZZLzkz?=
 =?utf-8?B?VHhGYlRmUVVDYnAwTkJWRm9wM3ViVURSVXdBUjJPNWVjYkE4dk1la2w4QUlk?=
 =?utf-8?B?VXRuZ3BhNTZHbG4wY3hRR1loNENUYU1qQUxQV0IvSTRqZDJKUDRJa1VHQzZs?=
 =?utf-8?B?SU9HWDVpUFd2Si9tRnpCUFRxdTBTTmI5M2xXYzdITzZwdzlSb1d2dGZGeG43?=
 =?utf-8?B?cEdRSmtPbFFreEVXdHg2SFNRWjdDdXVYaDRsRytmMHFxZnZlL2VMaXhNRUdy?=
 =?utf-8?B?REpTUTh0eTByK0xWM1NsT0tpRGtka2RtNGZtZ3J4WFhVaEZJQ25aN3lIN1Mz?=
 =?utf-8?B?M3FHdUQvM0VUamJxOGpLTjBDWHJVd04yaHVoMjVKYUFSZmNHUVRpQ0pBVEw5?=
 =?utf-8?B?TDRla2p5TlEzSlZaRFJUejdlM3MxMG5BNVlRWi9IaG5reURHcEZ4M29jamJw?=
 =?utf-8?B?TGp1Y2FrSUFlMmZGSTZ0dUdLcXJSczJVY2ErV1FxYlNjdWRxK2lYQzVyZTUw?=
 =?utf-8?B?V29CUWtkTXFDKzE1amFYeHhpZ012cEhyeFl5L1plRjd2Ym9yb25VOE9zY2c3?=
 =?utf-8?B?WmFQd3dhWmFwdzNVS1ArNXJKc3M5blZITXRDQkwwcEtLejk4QkdLNVZ3VVd6?=
 =?utf-8?B?MEFURmNKbmo4aXJwL2k4TFVQWkFWcjdTaGhQR1ZWL1o5ekFoWWI2dEhud2tR?=
 =?utf-8?B?RlpKajFwWWRIU1RMSm44elNUVjhJVVZtNHh4Tm9xYnNFcFA2QkxQaDdKQUha?=
 =?utf-8?B?T2ZmZHVHOEN1ajIxNUdiUStscCtJL3pPQVROMjBHYmlwV0RubWIrK3JGeVo1?=
 =?utf-8?B?Sk45dEpLamVtcTNEbk96dHFzNFpVNFZHVFRpeGw1eDkvY0hhK0ZSMnQvTm1i?=
 =?utf-8?Q?2BT/KrdZW2Lw8AFw=3D?=
X-Exchange-RoutingPolicyChecked: cGih2W5c3NMhlv74zGV8QvJF1S9FPmYfNnQ7GLWDtXdGRJBE1fsP+Zbk2ZrxVdSKAX2wOeLWTcdhCKyy4dkC+f2Fi3jo4/00ewbRHP18bnJpY/Vwv4L5tJva7a//g00zfHJwVtnjrGmBgFiPVTx+nYA/riWbvvwpx94YM8eHjjefmR+vuTEbSRffWV0JtXDBoPml3b2APhl3xPoZF+A2C9k0PjxGvHTiM+EfYjCqHVDs/MLv66iXemI443wx1g5WLNomdRWtt03vUR9IEyt0kixFEc7kn8w0fTuneTVVccT5DwQRM635unJltSAEsz1MkWMcnixF8X1trPKdnjN07w==
X-MS-Exchange-CrossTenant-Network-Message-Id: f4f1599c-cc1f-4ef5-7252-08dea45bac60
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 12:51:17.5581 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pcNt5ob/TkXj2dUXlqwSw6BdWXAw+Llao9S8c3zxp/ygiwk4kTxwd1atnaIneDwCeQS/yZA4FFZi/a7Hw8GRn9n3UfjqPMghXaYhyUkOA28=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6437
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
X-Rspamd-Queue-Id: CFB8F472D0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,m:jani.nikula@linux.intel.com,m:sebastian.brzezinka@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]

On Mon Apr 27, 2026 at 2:48 PM CEST, Jani Nikula wrote:
> On Mon, 27 Apr 2026, Sebastian Brzezinka <sebastian.brzezinka@intel.com> =
wrote:
>> This patch was initially sent to trybot and received Review-by: Krzyszto=
f
>> there. So I=E2=80=99ve copied it here.
>
> In most cases, patches shouldn't be sent to trybot, and the trybot list
> shouldn't be used for reviews.
>
> Trybot is primarily for testing out an idea when you're not sure how
> things would work on a bunch of real hardware. Or when the patch is not
> intended for merging at all. It's not for a generic preliminary round of
> testing. If trybot results pass, you'll still need to send the patch for
> CI and review and merging on the actual list, and it just ends up
> wasting a CI round.
>
>
> BR,
> Jani.
My bad, sorry for that.

--=20
Best regards,
Sebastian

