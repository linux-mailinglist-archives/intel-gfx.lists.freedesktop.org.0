Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cP2SBFA78mlypAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 19:09:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9520E49802D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 19:09:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB2110E40D;
	Wed, 29 Apr 2026 17:09:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jAvQWMx/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C277510E0ED;
 Wed, 29 Apr 2026 17:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777482568; x=1809018568;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0aKn4yc1jSDiWujmuwtzd26M2iOKh7qIS2jNH+xL/1k=;
 b=jAvQWMx/UfIfKcdBRlLe+H2zGLGkL7X+tFLuy5SrJKlv8gejNS7O6469
 CUkfgQleUH2ZK9ItkUAaYiQrWztTSrxFghSlGELY8GeLDV+fj9cObl5ym
 dyIlE2REZoLZ5LLlDi9RBx2m+skKrux8CXrNU+CkLNWdpfqj8Q2mQ+w/7
 7bJ1vgsNHN/ZAp6PaXu0ydu9RLpG4S3CKAg/8ZBCjuGxe6PSD9nFlNA5G
 rOMMhKIGChmz3G+++OUpeZBRshPzX14IMNRi7zyZoXbpWZLTfYIojNUOi
 NBGOw/pVdpmkJ+VEH7vTnp5jo6TEv7C6h3p5mvkBj8Gqn1GOHqXnm595p Q==;
X-CSE-ConnectionGUID: n3rGa5T8QmWOQeyxHlRoKg==
X-CSE-MsgGUID: h8R/sRuASQClP/LitJY3Jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="95982698"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="95982698"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 10:09:25 -0700
X-CSE-ConnectionGUID: 6/W6JbD5QLGqw6k2A2el0A==
X-CSE-MsgGUID: nLD9a9zSQvmJw6SmPW9V+g==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 10:09:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 10:09:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 10:09:24 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 10:09:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m7WnLKyRCCxRw4kzX4VnuK2cKBkrrZbroqlI7z2LQulsS33Vka/lIRG6N/XDBXI3CghCTizxTvjANGdAEHNozP6T8sk5LGWl1ZLND5Nn5YhpKaNXuTd8tR8DlC/D+pgom1B9uM/XNWTXETxBWYpPP8u4znp16Lg5g2FTmnwS5OQkSb3r40oMmjYV3NYze/mE7OX809n3qi/2kIGqJWDHSYtvbG6xbvX+2N9lUi6MHmSLFYzuiXXIxNcyd23Jt+JE62v2Dw/QRee/JjCenOU6tfwxYK5y22MuJVdei7gc6cjmaLg1KEMLLOD0Gj6yvNBbs/6eQY7KR+zbNH39nDSkOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7S16D96hhkfvQPIXNzrGhHze1SrDAcy0VOFcYc11v6Q=;
 b=adrV6wdUSqb/jewApsoBp795pbjZje2PXaY2rHPDPxjz47hO2RB/aPkFcW+/BTK7IhsUeYGZkhOo8INjINC+Syt/7wKuBeCExbIPrX0AgMVKKdZ/zEI7AHA9cGotWJ0MFydhunwEokqvHhMc2N+imSpoa5FG33ouw/3A2qkX4UfT5ug5FzxxXsMqhkBM64iMAgubuL14nUVFmP5WadPvBnKeMxgeICIGU1tRLeQllYinOu3X39aAeGlolwcINpXzP34DIB93CYNzqqYfWy6rESxp1AGLimCCvFtqo8E8JQAlMuvy6LDHf8BYKPCaalq+hUNjpjcwni2K+Eyx3XeQpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4942.namprd11.prod.outlook.com (2603:10b6:a03:2ac::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Wed, 29 Apr
 2026 17:09:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9870.020; Wed, 29 Apr 2026
 17:09:21 +0000
Message-ID: <136c1bf7-7687-4b28-9780-29763630c504@intel.com>
Date: Wed, 29 Apr 2026 22:39:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/intel_panel: Use highest refresh rate mode
 for seamless VRR changes
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
 <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
 <afH2DKWGJs5nmFwh@intel.com> <11998bff-4d5c-4a41-a9e8-312e90cbe1bf@intel.com>
Content-Language: en-US
In-Reply-To: <11998bff-4d5c-4a41-a9e8-312e90cbe1bf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0232.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f4::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4942:EE_
X-MS-Office365-Filtering-Correlation-Id: bd3c3a87-7506-4b9a-9572-08dea6120e16
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: vDEjJHlug6uKR2rI4XqoPaRGtlkxtpKSkTlsaLT6IM+1pLif3NA8i1GETTlTId0F+9GVWrniYinXN0igbNVWX4GWcnwUufcnzgGDtmE5S2Qx0Kg81RCs2qzPSCJsfMinofbCO6gjNEQEh+0KBJYCeMKLgh2/sWezUhzHNbgYWW+VeqnpOezLsj82aQA9xYgWeJdhhi+HRkiZnUnuc2S3deY+ozW3rUdNIIMCn6gJonxqpPO+EKqGB15MnERoVaN8Kc+hdi0bCArPsiMNVAnMoDtux/RXma6/lDqgXpRyxsBwSYIwvZfTXkhGmCMtjfrrk6bFEaL4cIUXz3+fQ+WWcCjiY6d4XcmGIXMqwynursMEzDi46v68qYvkmyIdHYQ9xJpQDFr1P8BO+6kH+TVxlo1uvwgF4FdF/YyKTpVEMt1N8xBfX+N3WyHo4LzPggtGBdwN2Ct2jMpNowL/9WZdmSdgAosSgwGSRgGzTURwki4FaUOzV3ea+KeBzli20h6KFexFgx9369J3SziCURGRbYNUAUusuuFCPuqSJseq+o9dCfyD3AbY9kenva5JQkmbyAMIbzSAf9aUpDLnJ53vsrk7orzoLdSoEZVcw+EAQfWotu1dyb0xrgTnfMJNcaJDqTtrcB0fsWOZvW6sSr1bpH/tglKdm6X7N3BDh0kuExlCIH4cVVOLico2V9hMCj/0x95ODJCKDPgzzrBSUCaeYUVMHjrwY/FDdIcLbHbSvBg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUltRnNLWExtaXJmSEM5MVJyZUJsdllvSUhuNVZ2dlBnTDV4Sk15dXlEMXRl?=
 =?utf-8?B?V3hjbi85QnRKRUlxOXBJWGNZTExudmRKMHdsMncyVmlxY0ZpMEg2NXZqcCtF?=
 =?utf-8?B?eU1YOHRwR0xCQ1RFWlZzOTVaMnBtQ0NxdzVpZXgvTTlqb1N1U0lvZW1vZHRH?=
 =?utf-8?B?NHlIY05qcjZFQ1I5MXNSWUhHa0QrczVyYTNLc1Rjajh6REZiMDZWeVIxZEow?=
 =?utf-8?B?cGZZRkVtandocjhwVGNyVGEwaTBWeU8yZjNMSnNMbUZUYmw3MnVteGZmZ0RX?=
 =?utf-8?B?K1U4TkVVOGxwcFFxQThtQUU2N2dXVVdRSkNQTHBTZEJvalJRWlczR1ZCQ1cv?=
 =?utf-8?B?MmhyYm1yd0hvU2JoNWVYRUVmYmRzSmd2QVNsWnJMN01ZVEJDaStWTDgzZUY1?=
 =?utf-8?B?VDlSKzR5c1FZN0wxSm5RSnRqbnNaTXI2Z0JVYWUrRUR1anRPVGNtSzVBZnMz?=
 =?utf-8?B?aG4zenBTT3ZlMmNoUHc4eEF3OFYxTW9DU29nc1dqVC9xVmh0VHMzNG5UK3py?=
 =?utf-8?B?ajlLTTR3T0JwR25tYUZjc05oMEViVmdXZklleWU5TElQZ0RZU1pJcG95ZnNa?=
 =?utf-8?B?eEZPNEZYRndPaE1uN3VnWG05ZFJVeDc3dnR5R1htajU3Q0dQR3RLeksrZHBF?=
 =?utf-8?B?QjJXN2FVaUgreWNOYjBzSE9TZTRsSkdCdVM2ayt1c2o3dThlWHFJRmtENWFh?=
 =?utf-8?B?ZWdIL1hyMlpTY0lDQ0RWMGNCMnc5cFJxRGJKU2JjVjNaTFZkMGNPeDJkNGN6?=
 =?utf-8?B?V1poelVaNWx6WGltLzhvdGc2NHFtQ0NTbmpxRzhxOFRFTVV6eWhKVzYrenIx?=
 =?utf-8?B?a05DaHVxSzFqYXhBbktwcWpTb0VjSGhPWTl0Ty93L2tEZW82UzNvTVJ1aVF5?=
 =?utf-8?B?OEQvR1RsNXdneUMwUGJCYkdYdjRTSzRzYStKZVBrYXg1dE93RndPRUNlNk9M?=
 =?utf-8?B?cksxVGM2ZENGOXhRM1A3Si96Q2YxajhpNDVRdU44d05xeVBRcmhBYzlLcUNp?=
 =?utf-8?B?R3N2N2owK29raGJHUmdNdkM0TkVrS3IvSmFEeWdJU2VhblZXRklkOWU1c2Fu?=
 =?utf-8?B?dEFhVVF6SlZieGN6aHFLaE9za2wyM0tvSm9yb0diTWxlVkJKL1VJZlRET0VS?=
 =?utf-8?B?RjYwajJtMHZiSU1Db1N5SU9IYmlnR0MvSlRIZzRYbVUzR2xUQ2NzRExSZWNL?=
 =?utf-8?B?SDhESjAzVFhQdEtsZXd6OG1STTg1TTM5WjNTQUFmaEdNb21McTBWNEM1aWpW?=
 =?utf-8?B?SzBHZTFNZTZOQ1dRU0o1QUJ1ZnZQeXNCZy9JWnZNYVpkQUdXRjZOeHFXc0V5?=
 =?utf-8?B?ekxFZDcrZnI3dDZCSjJWcDBoMjEvNmE4Ynk5ekFLOHZmM24vSW9zOXQzSU54?=
 =?utf-8?B?anFMeGNXL1ZNNTdOazJ6S1RMZEhjdUowaWVZOTFQNERnTFljRnpyLzlmRFBH?=
 =?utf-8?B?cEcvbHVGdWpIZnlCcGZYaXo1QndvSlNXU0pOanFIclVjdERlbG9UeEhRa25q?=
 =?utf-8?B?b3NTWnl3SXpsczlNRkxleGlYWk9IVDNTRks0dFAxRk5TMm94dURqZE9TeXZs?=
 =?utf-8?B?dmRmcFMyKzJ3UWlnNjZVN2tYUk9WTVNqSlZ3enJWUXNGSVEvWFBreHkxT29h?=
 =?utf-8?B?dHBzZnQ0L1NqSW1kaWZJQk1kSmxKVC81NHc0OThRV1ZEcXNKeGh6S0dIV0V3?=
 =?utf-8?B?WTVWSDF3ZmVFaUdwVUtnVXNPY2FnUFZpMWpLb1JJamRLaS9mOTlrM1dVcEw1?=
 =?utf-8?B?L0grbzdXL0lSektQN1hBOGNLaUpSUzZ5TE9qRWRaOC9hYnRIWkNVL1lPc1Yv?=
 =?utf-8?B?L2pXVHoycHpkaFVteWdmTGs4YWlIK0FHZ0txZ25QbFFKYkN6eTd3bWtwdlZC?=
 =?utf-8?B?RmtSR1Jzd0lycEhpTDUrN1lsajh2VnAvTG13LzZwOGcyVGFXQzFnWW4wTDFF?=
 =?utf-8?B?T29xaWxYbWVaMmt3ZitpV2RuMC9RQ1dtdXBLY094NjBBM3g5eFI3ZTdnUWRv?=
 =?utf-8?B?U09vMW5pWGVWNXh6cDhFdnVGTlNmczRuRmh4cDJldnk4VmtmYXdPd0tjZTV1?=
 =?utf-8?B?cm5oMHdta1dGL1l4dkZTSE5TRXZxUnk2ZkZqMXBqNmxQdkx5djRWNHJnSlE2?=
 =?utf-8?B?Ukc2djRiSjRybmR6WGhQT01iRlMzY3JlQmhtb0ZPeEVzRDEwaC9jM1RPMWps?=
 =?utf-8?B?SE9sWUxFTEVmMDlxWjg0M0NVT2s3VFAxZmdDU3pldXRnU0p6R1oraGk1b1dK?=
 =?utf-8?B?eXZETnJRdU82QkxXSkh3VzVqRzlxa01pNysrc0hhcHJvcjBRVHhzYWpVVGJx?=
 =?utf-8?B?M2RRVG5ubG5YYVZQNmY3VE54TXZobE5lVlVzK3gvaXlSZzJadmw2Um1ZMDB4?=
 =?utf-8?Q?LsBtjXqjqleflLnc=3D?=
X-Exchange-RoutingPolicyChecked: NZ1zajkR9ws1pJa1IsnS+4q3I1OtEIB6lljwHKj60KRsWYmKiIfDRdTiCNrCZm50rmF5/tzOpItYUaFOOqsRdrd0VVXsnibUv/wtXgIdE/TDtahOZVKThgcxbc2Amw9oMi2GtpCr1NSSo/jYWC7mdRQvieDvjBIGEhqgVM8glFUVpUWCdDrurVvBXo1DRmbhjpZXhiXVHQd6wpoLevHACTKntXG3SUdQy0IuhQqKOsE2UXpnJ59wYIgmfct8aWz1XjT2X5Z6+CH1pW/lkNZhdtP1bEcQf/pAkGkpsp4R1KHk32WvT8mrQ9RaTSjFVKPGqP31SoJRyXCYgBrJt6P5hA==
X-MS-Exchange-CrossTenant-Network-Message-Id: bd3c3a87-7506-4b9a-9572-08dea6120e16
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 17:09:21.0796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G+JCIjKpvuS+6HvJVrZCs0OkgnDaxwBf/4IooYNQ3g9Uyc4Encxe2valAY67APUChiPcxuhjowoNk4rM1ocJ35ukr0ijLoT8otuwadcvRyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4942
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
X-Rspamd-Queue-Id: 9520E49802D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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


On 4/29/2026 10:30 PM, Nautiyal, Ankit K wrote:
>
> On 4/29/2026 5:44 PM, Ville Syrjälä wrote:
>> On Tue, Apr 28, 2026 at 02:03:23PM +0530, Ankit Nautiyal wrote:
>>> intel_panel_fixed_mode() intends to choose a fixed mode at or above the
>>> requested refresh rate for VRR panels, so the requested refresh can be
>>> reached by extending vblank.
>>>
>>> This is called in compute config to find the 'best' fixed mode for a
>>> requested mode and also called during mode valid phase to prune the
>>> unsupported fixed modes.
>>>
>>> For Non-VRR panels there is no issue:
>>> - When a user wants to do a full modeset (sets DRM_MODE_ALLOW_MODESET
>>>    flag) with a custom mode, the intel_panel_fixed_mode() gives the 
>>> mode
>>>    with refresh rate nearest to the requested mode.
>>> - Seamless switch to a lower mode is only possible if the platform has
>>>    support for Double buffered MN and the sink is Seamless-DRRS 
>>> capable.
>>>    In this case the user sets a lower refresh rate mode and doesn't set
>>>    the DRM_MODE_ALLOW_MODESET flag the intel_panel_fixed_mode() returns
>>>    again the fixed mode whose refresh rate is nearest to the requested
>>>    mode.
>>> - Since Duble buffered MN is not supported on LNL+, the seamless switch
>>>    is not possible for such panels from LNL+.
>>>
>>> For VRR panels the current logic has some issues:
>>> - For VRR panels intel_panel_fixed_mode() intends to choose a fixed 
>>> mode
>>>    at or above the requested refresh rate so the requested refresh 
>>> can be
>>>    reached by extending vblank.
>>> - However, as per the current logic the helper can return a lower 
>>> refresh
>>>    rate mode, if the lower refresh rate mode is first in the list of 
>>> fixed
>>>    mode. Later, if the selected fixed mode's refresh rate < the 
>>> requested
>>>    mode's refresh rate, then the requested rate is matched by extending
>>>    the vblank.
>>> - In case of a full modeset request with a custom mode this is not a
>>>    problem. But for the seamless switch features like LRR (Lower 
>>> Refresh
>>>    Rate) and the Seamless-DRRS this creates a problem as this 
>>> results in
>>>    change in vsync_start/end and resulting in a full modeset.
>>> - Furthermore, as with the Non-VRR panel case, the Seamless-DRRS is not
>>>    supported on LNL+, but for VRR panels, the vblank can be extended
>>>    similar to LRR case. But due to the above mentioned problem in the
>>>    intel_panel_fixed_mode() this also results in full modeset.
>>>
>>> To solve these problems for the VRR panels, identify if the user 
>>> wants a
>>> full modeset or expects seamless switch. If seamless switch to a lower
>>> mode is desired, make intel_panel_fixed_mode() return the highest
>>> refresh rate mode, provided the requested rate is in vrr range. This
>>> will then be modified to extend the vblank to provide the desired
>>> refresh rate.
>>>
>>> This is particularly needed for DRRS panels on platforms without the
>>> double buffered M/N support (display version 20+), where seamless clock
>>> changes are not possible.
>>>
>>> To understand the user requirement for full modeset/seamless switch, 
>>> the
>>> intel_panel_fixed_mode() and intel_panel_compute_config() need 
>>> access to
>>> the connector state to check the allow_modeset flag.
>>>
>>> Add a nullable conn_state parameter to both. The mode_valid callers 
>>> pass
>>> NULL since they have no atomic state and the compute_config callers 
>>> pass
>>> their conn_state.
>>>
>>> Also remove the VRR check from is_best_fixed_mode() since the 
>>> selection is
>>> handled upfront in intel_panel_fixed_mode().
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++--
>>>   drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_dvo.c   |  6 ++--
>>>   drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +--
>>>   drivers/gpu/drm/i915/display/intel_panel.c | 35 
>>> +++++++++++-----------
>>>   drivers/gpu/drm/i915/display/intel_panel.h |  6 ++--
>>>   drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++---
>>>   drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
>>>   9 files changed, 37 insertions(+), 34 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c 
>>> b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> index afbaa0465842..1efe81404d01 100644
>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> @@ -1671,7 +1671,7 @@ static int gen11_dsi_compute_config(struct 
>>> intel_encoder *encoder,
>>>       pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>       pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>   -    ret = intel_panel_compute_config(intel_connector, 
>>> adjusted_mode);
>>> +    ret = intel_panel_compute_config(intel_connector, 
>>> adjusted_mode, conn_state);
>>>       if (ret)
>>>           return ret;
>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 35b8fb5740aa..f014ce28e69f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct drm_connector 
>>> *_connector,
>>>       if (intel_dp_hdisplay_bad(display, mode->hdisplay))
>>>           return MODE_H_ILLEGAL;
>>>   -    fixed_mode = intel_panel_fixed_mode(connector, mode);
>>> +    fixed_mode = intel_panel_fixed_mode(connector, mode, NULL);
>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>>>           status = intel_panel_mode_valid(connector, mode);
>>>           if (status != MODE_OK)
>>> @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct intel_encoder 
>>> *encoder,
>>>       struct intel_connector *connector = intel_dp->attached_connector;
>>>       int ret = 0, link_bpp_x16;
>>>   -    fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
>>> +    fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode, 
>>> conn_state);
>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>>> -        ret = intel_panel_compute_config(connector, adjusted_mode);
>>> +        ret = intel_panel_compute_config(connector, adjusted_mode, 
>>> conn_state);
>>>           if (ret)
>>>               return ret;
>>>       }
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c 
>>> b/drivers/gpu/drm/i915/display/intel_dsi.c
>>> index 9005c1f5d857..a480bb79dca7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
>>> @@ -64,7 +64,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct 
>>> drm_connector *connector,
>>>       struct intel_display *display = to_intel_display(connector->dev);
>>>       struct intel_connector *intel_connector = 
>>> to_intel_connector(connector);
>>>       const struct drm_display_mode *fixed_mode =
>>> -        intel_panel_fixed_mode(intel_connector, mode);
>>> +        intel_panel_fixed_mode(intel_connector, mode, NULL);
>>>       int max_dotclk = display->cdclk.max_dotclk_freq;
>>>       enum drm_mode_status status;
>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c 
>>> b/drivers/gpu/drm/i915/display/intel_dvo.c
>>> index 405b33aca9dd..0ec25d895777 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>>> @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct drm_connector 
>>> *_connector,
>>>       struct intel_connector *connector = 
>>> to_intel_connector(_connector);
>>>       struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
>>>       const struct drm_display_mode *fixed_mode =
>>> -        intel_panel_fixed_mode(connector, mode);
>>> +        intel_panel_fixed_mode(connector, mode, NULL);
>>>       int max_dotclk = display->cdclk.max_dotclk_freq;
>>>       int target_clock = mode->clock;
>>>       enum drm_mode_status status;
>>> @@ -259,7 +259,7 @@ static int intel_dvo_compute_config(struct 
>>> intel_encoder *encoder,
>>>       struct intel_connector *connector = 
>>> to_intel_connector(conn_state->connector);
>>>       struct drm_display_mode *adjusted_mode = 
>>> &pipe_config->hw.adjusted_mode;
>>>       const struct drm_display_mode *fixed_mode =
>>> - intel_panel_fixed_mode(intel_dvo->attached_connector, adjusted_mode);
>>> + intel_panel_fixed_mode(intel_dvo->attached_connector, 
>>> adjusted_mode, conn_state);
>>>         /*
>>>        * If we have timings from the BIOS for the panel, put them in
>>> @@ -270,7 +270,7 @@ static int intel_dvo_compute_config(struct 
>>> intel_encoder *encoder,
>>>       if (fixed_mode) {
>>>           int ret;
>>>   -        ret = intel_panel_compute_config(connector, adjusted_mode);
>>> +        ret = intel_panel_compute_config(connector, adjusted_mode, 
>>> conn_state);
>>>           if (ret)
>>>               return ret;
>>>       }
>>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c 
>>> b/drivers/gpu/drm/i915/display/intel_lvds.c
>>> index cc6d4bfcff10..2e30bc3f1e62 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>>> @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct drm_connector 
>>> *_connector,
>>>       struct intel_display *display = 
>>> to_intel_display(_connector->dev);
>>>       struct intel_connector *connector = 
>>> to_intel_connector(_connector);
>>>       const struct drm_display_mode *fixed_mode =
>>> -        intel_panel_fixed_mode(connector, mode);
>>> +        intel_panel_fixed_mode(connector, mode, NULL);
>>>       int max_pixclk = display->cdclk.max_dotclk_freq;
>>>       enum drm_mode_status status;
>>>   @@ -460,7 +460,7 @@ static int intel_lvds_compute_config(struct 
>>> intel_encoder *encoder,
>>>        * with the panel scaling set up to source from the H/VDisplay
>>>        * of the original mode.
>>>        */
>>> -    ret = intel_panel_compute_config(connector, adjusted_mode);
>>> +    ret = intel_panel_compute_config(connector, adjusted_mode, 
>>> conn_state);
>>>       if (ret)
>>>           return ret;
>>>   diff --git a/drivers/gpu/drm/i915/display/intel_panel.c 
>>> b/drivers/gpu/drm/i915/display/intel_panel.c
>>> index 5e918ee0c8ea..65d017371d78 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>>> @@ -59,24 +59,13 @@ intel_panel_preferred_fixed_mode(struct 
>>> intel_connector *connector)
>>>                       struct drm_display_mode, head);
>>>   }
>>>   -static bool is_best_fixed_mode(struct intel_connector *connector,
>>> -                   int vrefresh, int fixed_mode_vrefresh,
>>> +static bool is_best_fixed_mode(int vrefresh, int fixed_mode_vrefresh,
>>>                      const struct drm_display_mode *best_mode)
>>>   {
>>>       /* we want to always return something */
>>>       if (!best_mode)
>>>           return true;
>>>   -    /*
>>> -     * With VRR always pick a mode with equal/higher than requested
>>> -     * vrefresh, which we can then reduce to match the requested
>>> -     * vrefresh by extending the vblank length.
>>> -     */
>>> -    if (intel_vrr_is_in_range(connector, vrefresh) &&
>>> -        intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
>>> -        fixed_mode_vrefresh < vrefresh)
>>> -        return false;
>>> -
>>>       /* pick the fixed_mode that is closest in terms of vrefresh */
>>>       return abs(fixed_mode_vrefresh - vrefresh) <
>>>           abs(drm_mode_vrefresh(best_mode) - vrefresh);
>>> @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struct 
>>> intel_connector *connector,
>>>     const struct drm_display_mode *
>>>   intel_panel_fixed_mode(struct intel_connector *connector,
>>> -               const struct drm_display_mode *mode)
>>> +               const struct drm_display_mode *mode,
>>> +               const struct drm_connector_state *conn_state)
>>>   {
>>>       const struct drm_display_mode *fixed_mode, *best_mode = NULL;
>>>       int vrefresh = drm_mode_vrefresh(mode);
>>>   +    /*
>>> +     * With VRR always pick the highest refresh rate mode,
>>> +     * which we can then reduce to match the requested
>>> +     * vrefresh by extending the vblank length.
>>> +     */
>>> +    if (conn_state && !conn_state->state->allow_modeset &&
>> The foo_state->state pointer should never be used. If you need the full
>> atomic state then plumb it through from the top.
>
> Hmm noted.
>
>
>>
>>> +        intel_vrr_is_capable(connector) &&
>>> +        intel_vrr_is_in_range(connector, vrefresh))
>>> +        return intel_panel_highest_vrefresh_mode(connector);
>> What we want is the fixed mode that matches the current adjusted mode
>> exactly except for vtotal, and I think we also want to maintain the
>> vsync pulse location relative to vtotal.
>
> Oh alright. I was thinking the issue is in the best mode logic which 
> is resulting in lower mode getting picked when we wanted a higher mode 
> as best fixed mode.
>
> I was under the impression that since the vsync start/end of lower is 
> not the same with the higher mode and since this cannot be modified on 
> the fly, it results in full modeset.
>
> However, as you said, vsync start/end can be modified indeed the 
> problem becomes:
>
> - we are not scaling the vsync start/end similar to what we are doing 
> for vtotal.
> - even if we do that, we need to remove the check for vsync start/end 
> for fastboot.
>
> Another consideration is that is the vsync_start should be inside the 
> vrr guardband, but I think if the vsync_start scales up then it will 
> still be inside the guardband so we should be covered.
>
>
>>
>> We should in fact fix the vsync_start/end mess first.
>
> You mean the existing vsync_start/end change due to AS SDP thing? Or 
> you mean the above mentioned scaling up?


Scratch that.

For this to work, perhaps first, we need to get the AS SDP and PR fix 
patches in.

Without those patches, the guardband changes to accommodate vsync start 
resulting in full modeset.



>
>
>> We need to add
>> TRANS_VSYNC handling to the LRR codepaths and allow that to change
>> during fastsets. And intel_panel_compute_config() needs to preserve
>> the vtotal-vsync distance when adjusting vtotal. I think that should
>> all be fine for DP since it doesn't really use TRANS_VSYNC for
>> anything.
>
> Hmm I think I got some direction here. Thanks for making it clearer.
>
>
> Regards,
>
> Ankit
>
>>
>> +
>>>       list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, 
>>> head) {
>>>           int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
>>>   -        if (is_best_fixed_mode(connector, vrefresh,
>>> +        if (is_best_fixed_mode(vrefresh,
>>>                          fixed_mode_vrefresh, best_mode))
>>>               best_mode = fixed_mode;
>>>       }
>>> @@ -213,10 +213,11 @@ enum drrs_type intel_panel_drrs_type(struct 
>>> intel_connector *connector)
>>>   }
>>>     int intel_panel_compute_config(struct intel_connector *connector,
>>> -                   struct drm_display_mode *adjusted_mode)
>>> +                   struct drm_display_mode *adjusted_mode,
>>> +                   const struct drm_connector_state *conn_state)
>>>   {
>>>       const struct drm_display_mode *fixed_mode =
>>> -        intel_panel_fixed_mode(connector, adjusted_mode);
>>> +        intel_panel_fixed_mode(connector, adjusted_mode, conn_state);
>>>       int vrefresh, fixed_mode_vrefresh;
>>>       bool is_vrr;
>>>   @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct intel_connector 
>>> *connector,
>>>                  const struct drm_display_mode *mode)
>>>   {
>>>       const struct drm_display_mode *fixed_mode =
>>> -        intel_panel_fixed_mode(connector, mode);
>>> +        intel_panel_fixed_mode(connector, mode, NULL);
>>>         if (!fixed_mode)
>>>           return MODE_OK;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h 
>>> b/drivers/gpu/drm/i915/display/intel_panel.h
>>> index 2f7a317995ea..c1189a20c8b2 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>>> @@ -32,7 +32,8 @@ const struct drm_display_mode *
>>>   intel_panel_preferred_fixed_mode(struct intel_connector *connector);
>>>   const struct drm_display_mode *
>>>   intel_panel_fixed_mode(struct intel_connector *connector,
>>> -               const struct drm_display_mode *mode);
>>> +               const struct drm_display_mode *mode,
>>> +               const struct drm_connector_state *conn_state);
>>>   const struct drm_display_mode *
>>>   intel_panel_downclock_mode(struct intel_connector *connector,
>>>                  const struct drm_display_mode *adjusted_mode);
>>> @@ -47,7 +48,8 @@ enum drm_mode_status
>>>   intel_panel_mode_valid(struct intel_connector *connector,
>>>                  const struct drm_display_mode *mode);
>>>   int intel_panel_compute_config(struct intel_connector *connector,
>>> -                   struct drm_display_mode *adjusted_mode);
>>> +                   struct drm_display_mode *adjusted_mode,
>>> +                   const struct drm_connector_state *conn_state);
>>>   void intel_panel_add_edid_fixed_modes(struct intel_connector 
>>> *connector,
>>>                         bool use_alt_fixed_modes);
>>>   void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector 
>>> *connector);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c 
>>> b/drivers/gpu/drm/i915/display/intel_sdvo.c
>>> index 2e1af9e869de..e07c1070a3ec 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>>> @@ -797,7 +797,7 @@ intel_sdvo_create_preferred_input_timing(struct 
>>> intel_sdvo *intel_sdvo,
>>>         if (IS_LVDS(intel_sdvo_connector)) {
>>>           const struct drm_display_mode *fixed_mode =
>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, NULL);
>>>             if (fixed_mode->hdisplay != args.width ||
>>>               fixed_mode->vdisplay != args.height)
>>> @@ -1396,11 +1396,11 @@ static int intel_sdvo_compute_config(struct 
>>> intel_encoder *encoder,
>>>           pipe_config->sdvo_tv_clock = true;
>>>       } else if (IS_LVDS(intel_sdvo_connector)) {
>>>           const struct drm_display_mode *fixed_mode =
>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, 
>>> conn_state);
>>>           int ret;
>>>             ret = 
>>> intel_panel_compute_config(&intel_sdvo_connector->base,
>>> -                         adjusted_mode);
>>> +                         adjusted_mode, conn_state);
>>>           if (ret)
>>>               return ret;
>>>   @@ -1562,7 +1562,7 @@ static void intel_sdvo_pre_enable(struct 
>>> intel_atomic_state *state,
>>>       /* lvds has a special fixed output timing. */
>>>       if (IS_LVDS(intel_sdvo_connector)) {
>>>           const struct drm_display_mode *fixed_mode =
>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, 
>>> conn_state);
>>>             intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
>>>       } else {
>>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c 
>>> b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>> index 76e8cd0f65a4..bfe465443d20 100644
>>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>> @@ -280,7 +280,7 @@ static int intel_dsi_compute_config(struct 
>>> intel_encoder *encoder,
>>>       pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>       pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>   -    ret = intel_panel_compute_config(intel_connector, 
>>> adjusted_mode);
>>> +    ret = intel_panel_compute_config(intel_connector, 
>>> adjusted_mode, conn_state);
>>>       if (ret)
>>>           return ret;
>>>   --
>>> 2.45.2
