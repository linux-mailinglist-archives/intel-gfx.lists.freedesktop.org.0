Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GH39MOf4D2pDSAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 08:34:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 155075AF8B8
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 08:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D5010F4BC;
	Fri, 22 May 2026 06:34:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MLs4k8iA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09FB410E245;
 Fri, 22 May 2026 06:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779431651; x=1810967651;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XK4qk8hhl/rVe4lWDG3lgHb4l3UHuizvQ8Grg5bOu9A=;
 b=MLs4k8iA6tZft+dThRupGlHS65nVO09/m4UKJrTi8Zvej/XA6x8leEp2
 tG51xt6QnYWW2Ky134vbrrMl3H6vviMsVSD6roVhKYE3YdLFNGA2+GCxN
 75wARE2ZSTDstPJsY1p3IoRsqvZXJpz9/5myB4pSCSq9dJE1b7RoTa7Hn
 /gWEC9c+bUREGD4wUU9XoJdQG4xhVMj3835iDZKCFNhms52Kb4g0Rds22
 7Byaj39DZwuKTGYOxNRYVEP4UiJDwD3nw0i6FF1V/tUX3b5saA951AX85
 2EuPqytnGnyaGnOB5iNUxfi2+i11UWve2uaymkP4jcM5gjVBXvgrC5tAw Q==;
X-CSE-ConnectionGUID: euKlmgtiRGqUmRGTSqUKqQ==
X-CSE-MsgGUID: o8VaowalSe6cBKrZ0zegPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="80537502"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="80537502"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 23:34:10 -0700
X-CSE-ConnectionGUID: ZKt525joRJyyQNLXQu924A==
X-CSE-MsgGUID: etBG6fvVRLCoQJGokmamAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="236401332"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 23:34:10 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 23:34:09 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 23:34:09 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 23:34:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=atvTmYmeQfUdtoKO5lxQsrbnoiB5dahj3SSF5hevi9bR8L9pDnMLx4rWeWf2D/8mES6ZBePU8JxphJcGqDL16WdcIzbjKbOuxkYQiaExZzuRJjoEFgeVwy6sPCMyNJgmbWq0/S+WWMiB75rYk7zT3XEEiVO6zsCFfzJkfjAchkHov9yJYppEtJW0m7BYUI/4gFqMSUU9Hot9DTTQo3v5h7r7NYYNBJFNV67QEKtLE6E/0fb5EhB3Yb4oo5m0UIQEsD1bStXw6SRbWnIhiK/x+Mdd6yy540iYAyJaK5Cokt9RpeSgG48ECjlMCj+qZEpNfG3/R8LJMucZ7LKF+Hi8tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Na31aQvDsn+crMMoGqVKz+irXy4roKR5oEoNxWSCZo0=;
 b=HrChPhSdI+kFlO+dyDV2lypfrnWaQF9M6zCJ+h8u3el4VYVfeNPLbHsHq16koUVriYXaGPL0UEfKix3S8tA55Vej2lsnPTJeysnVjQo7/KDRAZSikBbhY4diNtQEoSrAdYtwKD8RbyFbvqgQxxwlQqKhhXGhm5Lj/bgWyf7w3XaLGQK6yb48CRmqkszfIzRknPbwssEOwYPDPLIFp5MrTHXE9iremewNuodgqsIrQCj1+bFEARErQ3VOd9Izp76BsZSfcg95NvqrpHDFvGn9gX91AJ3otuUELxyn58fBIOubkQdqDRl04q9iZu/SPDOrRu1G4UQLAqF/JsO1PA60VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB5245.namprd11.prod.outlook.com (2603:10b6:5:388::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 06:34:07 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0048.013; Fri, 22 May 2026
 06:34:07 +0000
Message-ID: <9a2155fc-1100-4a84-a0f4-37e730d9700f@intel.com>
Date: Fri, 22 May 2026 12:04:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] drm/print: describe 6th & 9th bit of drm.debug
Content-Language: en-GB
To: =?UTF-8?Q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
References: <20260521155231.1821935-1-michal.grzelak@intel.com>
 <20260521155231.1821935-2-michal.grzelak@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260521155231.1821935-2-michal.grzelak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0064.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::13) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|DM4PR11MB5245:EE_
X-MS-Office365-Filtering-Correlation-Id: d266959f-aea6-4e25-44e7-08deb7cc2014
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|3023799007|11063799006|4143699003|22082099003|56012099003|18002099003|10086099003;
X-Microsoft-Antispam-Message-Info: SfNuEOfb3e25eaG7Ra9+WXVaRwN83WimcSr3DlrDWcMj9u9+Za18krpU3TMrOz244pBeneZsuIKn1ejCN8bmh5cWYbzcoILQQk3m1pYCicmVjuRKyHCyRog9ZveWbepEgE//TzTqnuLlSnMlUXcm6Ibfmwu6zwTq+iZck2dLndIglgLjhbbee6747Da2kGl8rRLysXVcYRkysRug0WvwUV9qi9SJabe4gtAFIGqfuoY6rtNGbscraF89Ello+YN/hV8pNXO8hr+okhiaHSb9d0wFxykYN/fpUPx/IJP/969yPOiHJNNlXWANNUfQueWN9DccdYmJi/YfXE2NT7RonYEYcR3RRk7mtMubUfEHMTTNrx3Q5Wp41dd5BZPIQjbLuIoTCDX+mMvZOcxaL1tYae6auhrYjj+eXXS+q18CKfmpLiOPX3nE5rM4Psj3BGAlcT/K7vlhVem4oTu46FkDqk6BTShgH0mMPY9EE1l/eFfILLyh19AE2FPyCNKmfbG+K9A+MfAx0uK6Q3F5g2xFfHceJhxwpXOLtQsV9OTKKHd/W5FBkpDELOf/bULW1vKHDOUpFz0vGwcx9BC51BfxiZo+uXCulyR887KdZjT4K0+hJyMe93tSHklLghMiMybPlXygbxtpalDUHjcK3pFKXYhtBDZnallFln6eERhr9iGe0Lkl0fUXb8YAJXX9Thtj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(3023799007)(11063799006)(4143699003)(22082099003)(56012099003)(18002099003)(10086099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmpoaTBVa3FlbXcxdXpPTCtLQnNUSUNNSDI3dVl1Um14YXlvbkVPUUFNRFVz?=
 =?utf-8?B?YzRjS0FKeitJQS9PZk04SE9CU29iZ2h3RWp4RXVOQmNFeHErRmRWYWlNS3Vx?=
 =?utf-8?B?SnBpRzRMZFRwWlhENGRQYmIvYm9BZkFGOE9MN3g1SmZiYzhPV2hLQXBFU3dL?=
 =?utf-8?B?eHpoL1NGc1I1bzhyZjg4dFdYQU1SUzdJaFNaMG9JOFZUQXNOZUVPRkdWNk1v?=
 =?utf-8?B?RDB4cjdiZW5XdXJSckFIQWdaSDlIT0Z4TngyWWZsRTAra3dmRHpvOHJxWHhy?=
 =?utf-8?B?STc0S2w1Yld1cHpPczA0MXpKNlFwb05ubU1nZkNOT0MvMEw4bjJJTXdvaTZz?=
 =?utf-8?B?RWZoL21YdXFVRmJXRjAxdkdCK05Jci80aHdBRld0aFR4RkdOMVVoN3ducmlx?=
 =?utf-8?B?VHZhTVA5M0xyQk9CMUNMN2lobnc3N1JjVTFaMFJqbC80TTV3dTUyTXR1OWpT?=
 =?utf-8?B?RDFvanl1YWV6NFFNRzlUSUxLNExUOHA3S1VnbWxiRTFDVjFBbjNoNzczb2lm?=
 =?utf-8?B?QVNiWWszR0NzaVlxaCtkNzN0V1VKUzZFSW1WZDhsbDh3UWppRS8vVDBoZlhY?=
 =?utf-8?B?c2JlT296aUFtQUhmYkc4ZXFMckFGL2k3cEliT3g3NFdjYTVrbm1sbWVDQVNh?=
 =?utf-8?B?ZW5yeFBKM2xvcGYvdENMbVhabFF2MFc0SEx6QUpWdHVhSWhWZjEwUkg4TVc3?=
 =?utf-8?B?dzR0ZUNPTmFNOGUyTTEvT3MvSzRVMDZ3d3J2cGYwYkRWZ1RZZHJNUm93dkNC?=
 =?utf-8?B?eUJzVDFHV00vOENxcmxUZW5BNnZIaGN4Z1o0UWRBZm1aL1I3YThCWWRHaGFG?=
 =?utf-8?B?b0plRzdzQkdyOFNLdTdDWUdPRzdIUnhlVHNpOFRreVFFanM4ME84ck1yWldn?=
 =?utf-8?B?RXFmL3dVNHBYK3gwNm9vQXE5YkRjN2tZRkdLNERhM1krOXJpaDVybXIrSnV2?=
 =?utf-8?B?OS9qZ0hvd0E3UXpxRHhGdk5ENG1Nb1BxM1E1b0xyL0h4elh2aGxkRkJST3Qz?=
 =?utf-8?B?TjhxcFBwYk9Band5cEdUMms1VjhtRXN5dmdHRFhNQnlrbmtnK2tpZVhXUkRy?=
 =?utf-8?B?OTVOUUxhSVBZZnkwM3pQWlpRQ3FDNUhvNFVyK2RsMkpGaldwV3llSEhUcXlC?=
 =?utf-8?B?Q0tSbmVrNFgwbm1ISzRwRlQ5amJBdzIrSXg5S01NV3g0M2k0MWNMa0V0THEv?=
 =?utf-8?B?d3lmT2dxM3g2TEVYajBBR1pTR2szNk1lYWlKNHFDVS9WQW54VWZ3MWgwWVpO?=
 =?utf-8?B?Z0ltR2kzYXdTcjF3c1VEK3Bja1ZjUVlvNW05SUJ4bXR2YW9oVktYMDN6QlAv?=
 =?utf-8?B?ek16a3NLVlV4VWRJNUExTTVCdWFremo4LzRFQ3NxQnNZQXQvRGxzcTR2QlhN?=
 =?utf-8?B?THNveitlOExEMlZMM3BPMGVNL0ZQQURLeXRXdWpGSTRKMjZHOC96K1hTNDJK?=
 =?utf-8?B?elB1cUNnNWgvL1ppVFAwYU9DOTlvVHpQVXNRaE9CbDFkb1BQMjlNcEZlNE9H?=
 =?utf-8?B?dnE5VzB4VGFPR3JaeEg1TXM1U3cxMW5vd3pHVjlpYmNDaGFFai80dlF0ZnBK?=
 =?utf-8?B?WEZ5VjlzR1dTeEpnRkRSelVhbU5BWW9CYmY5eThmSllOVW9YQno0VFVaN1gw?=
 =?utf-8?B?alV4Zm5tTmdQTFc5Z1lEeEUxS3lJQ3RhbUNIeWVscllJS2ovRnRoOUtDUnFj?=
 =?utf-8?B?RDFCb2o4VEtpdFVkR0RYR3kxV0RIUzIzVi8wUXJLLzIvdGJpNEFYcmdmRUZq?=
 =?utf-8?B?U0lNTGk3YkEyT2RsMXZSNWNlWDN4VFUvMFFCSGJCa1UwVGp5cDFoVzJGMWJa?=
 =?utf-8?B?T25qaGN6Qis2ODNzOEEzTUdiaktvaU4xdDBMdHRkQ21MRDZTd2RyWWgrVlZB?=
 =?utf-8?B?ZXl2RHcrZjB3ejFsbFdieGRYYkhxSnQxOWk2cnV1K2ZkdkdxTHBjYUdJdG1J?=
 =?utf-8?B?c3lPZG16bVZrTld6Tk96T3NEMGt6Q3o3TUpZUmR3VmJScmYwdGpiRXB1RVBC?=
 =?utf-8?B?NTZCdjBNUVhJTW5xMDNVRnVWa1B2S3FNTTRjN3NFdUwybWJVUFB5ZG1iT1hG?=
 =?utf-8?B?blg2cmN6OFhTU3lNNE9Hb1NvMkxvQklvNnllTlNjRDR1bCtiYlhDSGhKN285?=
 =?utf-8?B?V2RiS2R5alUzazJaNi93Um9Fd1FjSmdPQmgxcFIzcThKeEt2dzdPakMzWmo4?=
 =?utf-8?B?cVpGbWJpUFFORlQySHZYWE9jcWVWVUhGbVF2TmtxWHBNVXdBWit0RzAybWJ0?=
 =?utf-8?B?VTNzSXEwSTdYaEpWSTNQakxScUlveElxZHM2Nms2V2JaaWJFSytDZ1I1RWhT?=
 =?utf-8?B?UTBPZndEOWJWS1BzRXVDL0xLTlJVM1JjclhrdFRtWjBuRUxKbzdJbWQ5anhP?=
 =?utf-8?Q?4zMnab4nuXgAhK8k=3D?=
X-Exchange-RoutingPolicyChecked: c7pAacCSW1hbIhK/XHfb4oAMRramp41brR/0vCK77k1y/gKjJg2zhFmJtrU4Brhe6hM8etHlcIlXgCaLoSsQF0DDPWYR+m3GLXMhfCXlx5OvqaqNAH7VDEoTZmVls/b1LsFE1cBgEWZbSgS2EjYVuQQb3EtJsUf3bQrhUzGHhFjyhkmgt/idITb5BYf3SW3+x1+661ISBrgOhRVstKoqwCwCSezDVTnRW93ufoIrDMgyLLQaIu+aqAzjRjP8MUS2t3uHiH/4VBXJ09QpTBsTzrxnnAgBO3X0QYevJwkRnXEue+58y3P234R0dgqySKUTTppoNnRHGWMMrzY9DGBIWQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: d266959f-aea6-4e25-44e7-08deb7cc2014
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 06:34:07.5464 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K+H3+vy3UpdqHH1X8Bw67i8U1uyDYpSgU1QAVnbsNZ6gAByW+PXBk2AH9JkJH1nKHtjW6lq7zvEC05C10B/BL2RpWFdV+7nyROPx2dVJcCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5245
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
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 155075AF8B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/21/2026 9:22 PM, Michał Grzelak wrote:
> Setting 6th or 9th bit of drm.debug change debug logging. Meanwhile
> `modinfo drm` does not inform about it at all.
> 
> Add info to MODULE_PARAM_DESC(debug, ...) about setting 6th and 9th bit
> basing on DECLARE_DYNDBG_CLASSMAP(drm_debug_classes, ...). Match
> description of corresponding bits with enum drm_debug_category. Include
> 9th bit in the example with enabling all possible logging provided at
> comment at include/drm/drm_print.h.
> 

LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
> ---
>   drivers/gpu/drm/drm_print.c | 4 +++-
>   include/drm/drm_print.h     | 2 +-
>   2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
> index ded9461df5f2..86cef1a37678 100644
> --- a/drivers/gpu/drm/drm_print.c
> +++ b/drivers/gpu/drm/drm_print.c
> @@ -50,8 +50,10 @@ MODULE_PARM_DESC(debug, "Enable debug output, where each bit enables a debug cat
>   "\t\tBit 3 (0x08)  will enable PRIME messages (prime code)\n"
>   "\t\tBit 4 (0x10)  will enable ATOMIC messages (atomic code)\n"
>   "\t\tBit 5 (0x20)  will enable VBL messages (vblank code)\n"
> +"\t\tBit 6 (0x40)  will enable STATE messages (atomic state code)\n"
>   "\t\tBit 7 (0x80)  will enable LEASE messages (leasing code)\n"
> -"\t\tBit 8 (0x100) will enable DP messages (displayport code)");
> +"\t\tBit 8 (0x100) will enable DP messages (displayport code)\n"
> +"\t\tBit 9 (0x200) will enable DRMRES messages (managed resources code)");
>   
>   #if !defined(CONFIG_DRM_USE_DYNAMIC_DEBUG)
>   module_param_named(debug, __drm_debug, ulong, 0600);
> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> index ab017b05e175..2adc5ac688e1 100644
> --- a/include/drm/drm_print.h
> +++ b/include/drm/drm_print.h
> @@ -87,7 +87,7 @@ extern unsigned long __drm_debug;
>    *  - drm.debug=0x2 will enable DRIVER messages
>    *  - drm.debug=0x3 will enable CORE and DRIVER messages
>    *  - ...
> - *  - drm.debug=0x1ff will enable all messages
> + *  - drm.debug=0x3ff will enable all messages
>    *
>    * An interesting feature is that it's possible to enable verbose logging at
>    * run-time by echoing the debug value in its sysfs node::

