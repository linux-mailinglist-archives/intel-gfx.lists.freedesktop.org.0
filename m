Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIEPJKUKtGlvfwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 14:01:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A04D42835F9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 14:01:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B5410EBE7;
	Fri, 13 Mar 2026 13:01:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z1pecuB0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1674610EBF9
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773406881; x=1804942881;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Jfm4xITVq8gBmlZxR/rq2omQt9OfNlE8LxnUbczUzmA=;
 b=Z1pecuB0S/Ijg6eqNpKSdr4rGEvlRfaADIBnYK1Kivl8RELiai2ei6N5
 xUjIjHDX+njbrzDXYDIHkhFKYvYTT2J5ZMqxOn5ApjZIh98q8S7aVMpfN
 vQrxB17geQoHhf7IhNHz32JZUDAnyB85Lr79Ygtd28rEk5i+E4PUjHNsQ
 VdkOu+JfzUiMyazpyJz0Estw2qvwvM92tGsphP9y9W98pZBN/XbCImXRq
 ggALK1UsptvLaObjW/A95bpx03Q59+i/5iVS2G3zpz57s6D3y+xh8tgO9
 /uTykxp0s4v4KDa1N2kfEZwATsh3zrRDdhgt5mSB0zebjSHoMW7I7741o Q==;
X-CSE-ConnectionGUID: EfnWS8xbSNK2W+GTjUX1Cw==
X-CSE-MsgGUID: pQL4H5oiTiy48WEKhPwgcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="73530719"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="73530719"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 06:01:21 -0700
X-CSE-ConnectionGUID: /tLONtcbTPy7T4cF9WMsFw==
X-CSE-MsgGUID: JM84Yrd5SXyg7JINb/XpTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="220416638"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 06:01:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 06:01:19 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 06:01:19 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 06:01:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lhva6Ntq2w0P6iSt+zn3OrsxCohwbgqDFAln/B0CyRAM2VtXdmfRRlI7RsmquZs0K3RYI7DgoU/oG0PpI2EFaMZxdgE58dCQoqP4BJ0NzDX/AKIo1h0XcPKkx9Foq51Ui1BWkUdxhRa8JtS4TJ3l+v9/tbTmhcZ73wbFFcT/q3m5hhVSwCd645lbVanFxqtHiNhh9kWyHbT6B/o0P43eyzWaQjiFWaMoPXx7Sg5QyJeXdGyoKP6zBGq9c4A02ytApJHh5p2tfVbVBOQgKOFP/NJyyciG1bhzrBmnPotTl9X639R43BTRwSAZAO7HpiPxmwNSN1BAtoLXAAYD7OGWPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZWZ+CNcxYNa377QYnbvpWHB4ghqNKfP0Z/9XVPYSIT4=;
 b=fLR1Uurp1J+aenI/nmsV5lm85k5JCnxND+Zlj9cvcgSrT6gAPIkI+pU2iN1ya+rfMFH+BDToP8UOK2Gb25ubMj2JkVtK5Z0V6rt53Q1hPIir+igvG4skacwIJQvEU556t359+2E7IGMYIY13lXOoiuJGaZj2Nr11MAlf9m7WcF1imISjHSXoEWIdqgkhrTUq6ennATYNs3AmSVlhX6UJdTe//HyRDD7p52GqDoAxT9I7Tkw2DCVlkSM4fUp2HjU/Tmn1tBCq7PbKWDNVKHpqD4tT9j3nrp+K14BosB/ke0/aX0KhCzJbqrP+NTfmyJcocM+clmoqCEsSbxfDZ/3cRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB5215.namprd11.prod.outlook.com (2603:10b6:a03:2d9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Fri, 13 Mar
 2026 13:01:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9723.008; Fri, 13 Mar 2026
 13:01:10 +0000
Date: Fri, 13 Mar 2026 15:01:03 +0200
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?=
 =?utf-8?Q?cess_for_series_starting_with_=5B1=2F2=5D_drm=2Fi915=2Fdp=5Fmst?=
 =?utf-8?Q?=3A?= Fix forced link retrain handling in MST HPD IRQ handler
Message-ID: <abQKj-DrbkLL-zGy@ideak-desk.lan>
References: <20260311153152.133744-1-imre.deak@intel.com>
 <177330350878.349937.5756254693475237660@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177330350878.349937.5756254693475237660@a3b018990fe9>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F703.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::385) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB5215:EE_
X-MS-Office365-Filtering-Correlation-Id: e27e1d3b-4ab9-424a-bf99-08de810098f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 4IGWjZdnhjKSbvslD/3GYWsCtqIGQPnLJ1IQPNi4eIXtx8sEl5ncFfgiy/N3dAjk+KnrJHl15TwhShh9g9CiONphptzqVmhApEejSGD8i3HfDaXk9etb11IyUNG+vV69X5Z7YTBwmzZmb7Zby4INaFakZwjAJI78VthQZhHbWCl64PFQiBpoTLBxBSD+W+ADlBTFkUmebHk0OEQ2pBY92zr10Whl2Mg04MmP+uo/6ELrnsLOa9H19aVBLzg9PryHan8U+2Z2zRnBSuXR6UD2xgMPWX3j5HIxWEv1j4c5GsV6YDX2cHccCSgHRumXyQnvWE4ksoV5ajeI0L77hN4bd0kHiPojTzPXQvMnQwRU9X9hquTORhjLEKSwvnWi9TF6cBnA06uo6p5R+6TsbRx173uCdAVJIoZpmwSovJPKybpwX773MAxPhk9p6ZABSGsPVSz7m7ON7wwYeH58LQF/z9S1ugwt+J7qFiVuJIVg5VP1HVaXr7DL5wRzQwfILPk3z0M5m9IgKtAucMoKBcjjuDBwj7ZJbJFf/ngB84x0ALqQrtZdpSsOLtS6IKtX1/ZR0uV/LlT+EJnN01u45AjALPh8jeEyPgTlfOtg1zeotwumAyUwxWwlEH/oIWO+TC4QvHiU6v7H9PN4Wtr1s8tQSwiiuwWi9QiJspE4VsAIEjiZuMqSjnmacgAct15v/a/M
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iW7PyD8j4AWYMgWyMigU5tkmKY//84StTnsVC50cosBcOaJ3UO2BvxcHG0wC?=
 =?us-ascii?Q?ulbuEOXil0tMpGnVnvcuruKG/D0Z+zT10jN56Kku2z1AMYXdSmbAwrKfk3l6?=
 =?us-ascii?Q?2d+C3I3Qc7L9dO5LKwlEDevP4tA72MkbIpPh5wlQ13XV7925AGSBG1NM1hYG?=
 =?us-ascii?Q?cPP8StcsVyA/FI33kMoEL/Gf5ohDGwZJkGDiioV3NHQMQmozGCPUVYZzgAEN?=
 =?us-ascii?Q?BTMC7RV6WI0AReTDc391aWpJoyZMEBqL30m3vdon62aJmq0wBzSk77vYhxSc?=
 =?us-ascii?Q?bqlLvr53HfcFK3C+VEvkx8WpTLQebjM5IkWXsoJfb+sCOsFU3YDl2BaYdJnH?=
 =?us-ascii?Q?/c/0c8VxfyGcRyWwXHQPj1O7ikPzOe2ALnKAa5oo6lFxm5aGXqhl/dugsK+o?=
 =?us-ascii?Q?EqqzisXU6JAiky+VDm/5Ge+jmhKq+4YZ0tifz2LVTkm1IM/ASTFcalPkkfHT?=
 =?us-ascii?Q?PF/YhVHQQjOo8yPcWIcXFi+IjPtUF1lI/k7ycGVjHMS3i9Bt7IfINg6nbOig?=
 =?us-ascii?Q?T29CZ/k3sRbWr6XSZrdtf/b5tJsOV1OmHgBNtJoltZimh0Xlcszaqh3yVZte?=
 =?us-ascii?Q?5BKMATuJcq2yBA3Pw3J0YKfgrQmU74w405vT1LZof6ILLhm52wCU7aMLEWEz?=
 =?us-ascii?Q?dErY1QHDYyq2KnyUsqnhk+w0xR8WXdbvMnXiutf0xwhO6GE4XfoSn2zZjzet?=
 =?us-ascii?Q?dlfpbfg97KnzsxUubYFUJAdellDSzvfs1+9vn8PgS1gcs0tVWKJcS7oXzzhV?=
 =?us-ascii?Q?hq5MFULLHlRzHCGktnWDLLi6hPGn7PKUkuiZ8gW+Q9BdbBAJunqZOwdfJcg2?=
 =?us-ascii?Q?0IoLV/8PrbMf/pJ6flFydYEwVsFDfdBJgtRIagXFVsn/GfXgjhg2JYrXNz7J?=
 =?us-ascii?Q?/F4743aD1Fwi+8mqSKOCwbL5d93YwBvonvzHO0BupDM8yatbFfAh+6slViem?=
 =?us-ascii?Q?/4jBEhqn8EQy03v/aEOKi9BQErvCWGJj1PXm+nGPDfHDWhSw162KqjTViF03?=
 =?us-ascii?Q?H35o6GgbyFQD2wgF4Rthtxj6iDUVd7Qb97gt57aL1QO3avU3GHnMy2yn9/Xm?=
 =?us-ascii?Q?VGMmpNVn0BznVTOb4cRFqziqyrr6LrXPoPj4UjKaZD6gQKY1dgLya4QRMI5N?=
 =?us-ascii?Q?nt2Lqc64mm6nKtAXIR2i/q/9i0RD7W+WUConEjGLEpCFPL66BLp9/27HJVX0?=
 =?us-ascii?Q?yc+4DY49JIWdEZXE4CcWT6xa4I/5KYKlR+mxljtg89CF4fqrz/R3xArhrXJ6?=
 =?us-ascii?Q?Or9v/R62d77ToKA81drSXuocsvenywYOCi6nC255jgIAQVvzyRxKY91Sw2e4?=
 =?us-ascii?Q?x1NKBW2exCmeXQtUgLlBHHQTCq8vgIWrh6JDleteg36QQDXeidk0mAcqVR+M?=
 =?us-ascii?Q?b96sFJKzfPE4C61eDuCkAt2dAqTIItMIrJvG5XTbCfLUtAlikCD2OTacdVMJ?=
 =?us-ascii?Q?IZ6NGMs9+zGEkWk6VQFEinTez2DEaCRS9G9jFNg1koE16HSRi28VRrCkXDtp?=
 =?us-ascii?Q?V8FFtNXw2KF4otrc3sZ446cumYuOuPc8np6hrAl9+wgROLhatlvbEYGmC0Pg?=
 =?us-ascii?Q?hW8D5lPnsu0+sPETveisqOqjUV8Gi5JmD4OsNLOdiZ7lXdCeCSOd3izNR/+F?=
 =?us-ascii?Q?31lAzDVXa/yL02NFVrdKUXyRpNpoQkYDw/5+UkaLBBtEWi8BPrQJrieKk88Z?=
 =?us-ascii?Q?KfZskH4VKQtGc0UvkFvVvZQLt/tv8LV5Pg2uOljIRN1xuHvZz42hP8QNsPSZ?=
 =?us-ascii?Q?iubPPXteUQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: ibq8InIfe5VYbrqLh49Gv/3N6Gedl+y+SQvwD6qDbjNmYqRkWd0r8BCGRSuhJ0o41T/mWUc7uStGTylhIAfSR0cdCDpQP6zcuneUTBfC9EeSctQZkDxTmj7fGewuSjYrzBNxeWWglzpu0+p+U+w4oIX4q7a+mP7lZCtubOUB6cEs7eY5Zhy/7SckddNuI5iPhmenyRzjxYADBSX6KJrEvPCuZEe5EvVR6upMVzDdQ+b0+1iN0PM7UTg1yMw8EEMNo1LkIWXVzukxKY6KLoV1nTidqJM6adCmNKjiSEfJRqRdp9ZKHbtmTOgKVJG6T4kGTX4I6pRBgWoH+oJejEZd+w==
X-MS-Exchange-CrossTenant-Network-Message-Id: e27e1d3b-4ab9-424a-bf99-08de810098f7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 13:01:10.4878 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dVhb1SYOaCTj38dckJIPsmFNb5pIh/Althu0eEjfOomw3xnWui0J1gMzPr8feNBhp4EGtrr1ZJ09Nib/sOfWYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5215
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:suraj.kandpal@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A04D42835F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 08:18:28AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/dp_mst: Fix forced link retrain handling in MST HPD IRQ handler
> URL   : https://patchwork.freedesktop.org/series/163040/
> State : success

Thanks for the review, patchset is pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18130_full -> Patchwork_163040v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_163040v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][1] ([i915#9323])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#7697])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-tglu:         NOTRUN -> [SKIP][3] ([i915#6335])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-rkl:          [PASS][4] -> [INCOMPLETE][5] ([i915#13356]) +3 other tests incomplete
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-8/igt@gem_ctx_isolation@preservation-s3.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-4/igt@gem_ctx_isolation@preservation-s3.html
> 
>   * igt@gem_ctx_persistence@engines-persistence:
>     - shard-snb:          NOTRUN -> [SKIP][6] ([i915#1099]) +2 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-snb4/igt@gem_ctx_persistence@engines-persistence.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#280]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          NOTRUN -> [FAIL][8] ([i915#8898]) +1 other test fail
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-snb4/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-tglu:         NOTRUN -> [SKIP][9] ([i915#4525]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#4525])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu-1:       NOTRUN -> [FAIL][11] ([i915#15816])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@gem_exec_big@single.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#3281]) +4 other tests skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][13] -> [INCOMPLETE][14] ([i915#13356]) +1 other test incomplete
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglu:         NOTRUN -> [SKIP][15] ([i915#2190])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-glk:          NOTRUN -> [SKIP][16] ([i915#4613]) +3 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk2/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-dg2:          [PASS][17] -> [FAIL][18] ([i915#15734])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg2-5/igt@gem_lmem_swapping@smem-oom.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg2-6/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][19] -> [CRASH][20] ([i915#5493])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#4613]) +2 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-9/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#3282]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][23] ([i915#14702] / [i915#2658])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#13717])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#13398])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][26] ([i915#3297]) +1 other test skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-glk:          NOTRUN -> [SKIP][27] ([i915#3323])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk6/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#3297])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][29] -> [ABORT][30] ([i915#5566])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-glk2/igt@gen9_exec_parse@allowed-single.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#2527] / [i915#2856]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#2527])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_module_load@fault-injection@__uc_init:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#15479]) +4 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@i915_module_load@fault-injection@__uc_init.html
> 
>   * igt@i915_module_load@fault-injection@intel_connector_register:
>     - shard-rkl:          NOTRUN -> [ABORT][34] ([i915#15342]) +1 other test abort
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@i915_module_load@fault-injection@intel_connector_register.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#8399])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-7/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglu:         NOTRUN -> [WARN][36] ([i915#13790] / [i915#2681]) +1 other test warn
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#14498])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#5723])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][39] ([i915#4817]) +1 other test incomplete
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk5/igt@i915_suspend@debugfs-reader.html
>     - shard-rkl:          [PASS][40] -> [ABORT][41] ([i915#15131])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@i915_suspend@debugfs-reader.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-1/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][42] ([i915#4817])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk10/igt@i915_suspend@forcewake.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-rkl:          [PASS][43] -> [INCOMPLETE][44] ([i915#4817])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@i915_suspend@sysfs-reader.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][45] ([i915#12761]) +1 other test incomplete
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#5286])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#5286]) +5 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-9/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#5286]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][49] -> [FAIL][50] ([i915#15733] / [i915#5138]) +1 other test fail
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#3638]) +3 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#6095]) +99 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg1-19/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#12313])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#6095]) +39 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-9/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#6095]) +27 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg2-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][56] ([i915#6095]) +34 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][57] ([i915#15582]) +1 other test incomplete
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk11/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#14098] / [i915#6095]) +47 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#12313])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#14544] / [i915#6095]) +7 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#6095]) +71 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#10307] / [i915#6095]) +51 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][64] +246 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk2/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#3742])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-9/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#13783]) +3 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_edid@dp-edid-resolution-list:
>     - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_chamelium_edid@dp-edid-resolution-list.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-tglu-1:       NOTRUN -> [SKIP][70] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-dpms-hdcp14:
>     - shard-tglu-1:       NOTRUN -> [SKIP][72] ([i915#6944])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_content_protection@atomic-dpms-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#15330] / [i915#3116] / [i915#3299]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#15330])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#13049])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#13049]) +1 other test skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#3555]) +4 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][78] ([i915#13566])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-tglu-1:       NOTRUN -> [SKIP][79] ([i915#3555]) +1 other test skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-dg1:          [PASS][80] -> [DMESG-WARN][81] ([i915#4423]) +3 other tests dmesg-warn
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg1-12/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg1-17/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][82] +5 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#4103])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#1769] / [i915#3555] / [i915#3804])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#3804])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3555] / [i915#3840]) +2 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#3840] / [i915#9053])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#1839])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#658]) +1 other test skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race:
>     - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#9934]) +3 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@kms_flip@2x-dpms-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][91] ([i915#12745] / [i915#4839])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk11/igt@kms_flip@2x-flip-vs-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][92] ([i915#4839])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk11/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#3637] / [i915#9934]) +7 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#3637] / [i915#9934]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#15643]) +1 other test skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#15643]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][97] ([i915#15643]) +2 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][98] +44 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#5439])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:
>     - shard-snb:          NOTRUN -> [SKIP][100] +144 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-snb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-glk10:        NOTRUN -> [SKIP][101] +8 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#1825]) +18 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:
>     - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#15102]) +15 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-tglu-1:       NOTRUN -> [SKIP][104] ([i915#5439])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#15102]) +9 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#15102])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#15102] / [i915#3023]) +8 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:
>     - shard-glk11:        NOTRUN -> [SKIP][108] +98 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          [PASS][109] -> [SKIP][110] ([i915#3555] / [i915#8228])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#3555] / [i915#8228])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#3555] / [i915#8228]) +1 other test skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#15460])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#15815])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-rkl:          [PASS][115] -> [ABORT][116] ([i915#15132]) +1 other test abort
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-1/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][117] ([i915#12756] / [i915#13409] / [i915#13476]) +1 other test incomplete
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#15709]) +3 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-9/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping:
>     - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#15709]) +3 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#15709]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][121] ([i915#13026]) +1 other test incomplete
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max:
>     - shard-glk10:        NOTRUN -> [FAIL][122] ([i915#10647] / [i915#12169])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk10/igt@kms_plane_alpha_blend@constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:
>     - shard-glk10:        NOTRUN -> [FAIL][123] ([i915#10647]) +1 other test fail
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk10/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#13958])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
>     - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#15329]) +4 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#15329] / [i915#3555])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#15329]) +6 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#9812])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#9812])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3828])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-7/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#8430])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [PASS][132] -> [SKIP][133] ([i915#15073])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#15073])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#15073])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg2:          [PASS][136] -> [SKIP][137] ([i915#15073]) +1 other test skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#11520]) +4 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][139] ([i915#11520])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#11520]) +3 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-glk11:        NOTRUN -> [SKIP][141] ([i915#11520]) +3 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk11/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#11520]) +5 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][143] ([i915#11520]) +4 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-snb:          NOTRUN -> [SKIP][144] ([i915#11520]) +2 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-snb6/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#9683])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-7/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#9683])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#9732]) +11 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-9/igt@kms_psr@fbc-pr-suspend.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#1072] / [i915#9732]) +8 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#9732]) +9 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@multiplane-rotation:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][150] ([i915#15492])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk3/igt@kms_rotation_crc@multiplane-rotation.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#5289]) +2 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#5289])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-tglu:         NOTRUN -> [ABORT][153] ([i915#13179]) +1 other test abort
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-9/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#3555]) +1 other test skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-5/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#8623])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][156] ([i915#12276]) +1 other test incomplete
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk10/igt@kms_vblank@ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#9906])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#9906]) +1 other test skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-tglu-1:       NOTRUN -> [SKIP][159] +28 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-1/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-double-start@rcs0:
>     - shard-mtlp:         [PASS][160] -> [FAIL][161] ([i915#4349])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-mtlp-1/igt@perf_pmu@busy-double-start@rcs0.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-mtlp-1/igt@perf_pmu@busy-double-start@rcs0.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#3291] / [i915#3708])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-7/igt@prime_vgem@basic-write.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu:         NOTRUN -> [FAIL][163] ([i915#12910])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-tglu-9/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_read@fault-buffer:
>     - shard-dg1:          [DMESG-WARN][164] ([i915#4423]) -> [PASS][165] +1 other test pass
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg1-19/igt@drm_read@fault-buffer.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg1-16/igt@drm_read@fault-buffer.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-dg1:          [FAIL][166] ([i915#15734]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg1-13/igt@gem_lmem_swapping@smem-oom.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [CRASH][168] ([i915#5493]) -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-glk:          [INCOMPLETE][170] ([i915#13356] / [i915#14586]) -> [PASS][171]
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-glk8/igt@gem_workarounds@suspend-resume-fd.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk3/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_selftest@live:
>     - shard-mtlp:         [DMESG-FAIL][172] ([i915#12061] / [i915#15560]) -> [PASS][173]
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-mtlp-5/igt@i915_selftest@live.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-mtlp-7/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [DMESG-FAIL][174] ([i915#12061]) -> [PASS][175]
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-mtlp-5/igt@i915_selftest@live@workarounds.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - shard-dg1:          [DMESG-WARN][176] ([i915#4391] / [i915#4423]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg1-12/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-rkl:          [INCOMPLETE][178] ([i915#4817]) -> [PASS][179]
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@i915_suspend@forcewake.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [TIMEOUT][180] ([i915#14033]) -> [PASS][181] +1 other test pass
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_force_connector_basic@force-edid:
>     - shard-mtlp:         [SKIP][182] ([i915#15672]) -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-mtlp-1/igt@kms_force_connector_basic@force-edid.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-mtlp-8/igt@kms_force_connector_basic@force-edid.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-rkl:          [INCOMPLETE][184] ([i915#14412]) -> [PASS][185] +1 other test pass
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [SKIP][186] ([i915#15073]) -> [PASS][187] +2 other tests pass
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [SKIP][188] ([i915#15073]) -> [PASS][189]
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@testdisplay:
>     - shard-snb:          [DMESG-WARN][190] -> [PASS][191]
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-snb5/igt@testdisplay.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-snb5/igt@testdisplay.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-rkl:          [SKIP][192] ([i915#8411]) -> [SKIP][193] ([i915#14544] / [i915#8411])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-rkl:          [SKIP][194] ([i915#11078]) -> [SKIP][195] ([i915#11078] / [i915#14544])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@device_reset@cold-reset-bound.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@device_reset@cold-reset-bound.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          [SKIP][196] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][197] ([i915#3555] / [i915#9323])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          [SKIP][198] ([i915#280]) -> [SKIP][199] ([i915#14544] / [i915#280])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@gem_ctx_sseu@invalid-args.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-rkl:          [SKIP][200] ([i915#6334]) -> [SKIP][201] ([i915#14544] / [i915#6334]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@gem_exec_capture@capture-invisible@smem0.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-rkl:          [SKIP][202] ([i915#14544] / [i915#3281]) -> [SKIP][203] ([i915#3281]) +3 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-rkl:          [SKIP][204] ([i915#3281]) -> [SKIP][205] ([i915#14544] / [i915#3281]) +6 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-rkl:          [SKIP][206] ([i915#4613]) -> [SKIP][207] ([i915#14544] / [i915#4613]) +2 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-random.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          [SKIP][208] ([i915#14544] / [i915#4613]) -> [SKIP][209] ([i915#4613]) +1 other test skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          [SKIP][210] ([i915#14544] / [i915#3282]) -> [SKIP][211] ([i915#3282]) +6 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pread@display:
>     - shard-rkl:          [SKIP][212] ([i915#3282]) -> [SKIP][213] ([i915#14544] / [i915#3282])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@gem_pread@display.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@gem_pread@display.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-rkl:          [SKIP][214] ([i915#14544] / [i915#3297]) -> [SKIP][215] ([i915#3297])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-rkl:          [SKIP][216] ([i915#3297]) -> [SKIP][217] ([i915#14544] / [i915#3297])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@gem_userptr_blits@unsync-overlap.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          [SKIP][218] ([i915#14544] / [i915#2527]) -> [SKIP][219] ([i915#2527]) +1 other test skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          [SKIP][220] ([i915#2527]) -> [SKIP][221] ([i915#14544] / [i915#2527])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@gen9_exec_parse@secure-batches.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          [SKIP][222] ([i915#14544] / [i915#8399]) -> [SKIP][223] ([i915#8399])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          [SKIP][224] ([i915#4387]) -> [SKIP][225] ([i915#14544] / [i915#4387])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@i915_pm_sseu@full-enable.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          [SKIP][226] ([i915#14544] / [i915#7984]) -> [SKIP][227] ([i915#7984])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@i915_power@sanity.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@i915_power@sanity.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          [SKIP][228] ([i915#14544] / [i915#1769] / [i915#3555]) -> [SKIP][229] ([i915#1769] / [i915#3555])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-rkl:          [SKIP][230] ([i915#5286]) -> [SKIP][231] ([i915#14544] / [i915#5286]) +3 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][232] ([i915#14544] / [i915#5286]) -> [SKIP][233] ([i915#5286]) +2 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][234] ([i915#3638]) -> [SKIP][235] ([i915#14544] / [i915#3638])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][236] ([i915#14544] / [i915#3638]) -> [SKIP][237] ([i915#3638]) +3 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-rkl:          [SKIP][238] ([i915#14544]) -> [SKIP][239] +6 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][240] ([i915#6095]) -> [SKIP][241] ([i915#14544] / [i915#6095]) +8 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][242] ([i915#14544] / [i915#6095]) -> [SKIP][243] ([i915#6095]) +3 other tests skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][244] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][245] ([i915#14098] / [i915#6095]) +6 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][246] ([i915#12313] / [i915#14544]) -> [SKIP][247] ([i915#12313])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-dg1:          [SKIP][248] ([i915#12313]) -> [SKIP][249] ([i915#12313] / [i915#4423])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs:
>     - shard-dg1:          [SKIP][250] ([i915#4423] / [i915#6095]) -> [SKIP][251] ([i915#6095])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][252] ([i915#12805] / [i915#14544]) -> [SKIP][253] ([i915#12805])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
>     - shard-rkl:          [SKIP][254] ([i915#14098] / [i915#6095]) -> [SKIP][255] ([i915#14098] / [i915#14544] / [i915#6095]) +13 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          [SKIP][256] ([i915#3742]) -> [SKIP][257] ([i915#14544] / [i915#3742])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_cdclk@mode-transition.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          [SKIP][258] ([i915#11151] / [i915#7828]) -> [SKIP][259] ([i915#11151] / [i915#14544] / [i915#7828]) +5 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-read.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>     - shard-rkl:          [SKIP][260] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][261] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-rkl:          [SKIP][262] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][263] ([i915#6944] / [i915#7118] / [i915#9424])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          [SKIP][264] ([i915#15330] / [i915#3116]) -> [SKIP][265] ([i915#14544] / [i915#15330] / [i915#3116])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_content_protection@dp-mst-type-1.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-rkl:          [SKIP][266] ([i915#6944] / [i915#9424]) -> [SKIP][267] ([i915#14544] / [i915#6944] / [i915#9424]) +1 other test skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_content_protection@lic-type-0.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][268] ([i915#6944] / [i915#9424]) -> [SKIP][269] ([i915#9433])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg1-18/igt@kms_content_protection@mei-interface.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-rkl:          [SKIP][270] ([i915#13049]) -> [SKIP][271] ([i915#13049] / [i915#14544])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-rkl:          [SKIP][272] ([i915#13049] / [i915#14544]) -> [SKIP][273] ([i915#13049])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-rkl:          [SKIP][274] -> [SKIP][275] ([i915#14544]) +16 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][276] ([i915#15804]) -> [FAIL][277] ([i915#15805])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][278] ([i915#14544] / [i915#9723]) -> [SKIP][279] ([i915#9723])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-rkl:          [SKIP][280] ([i915#13707]) -> [SKIP][281] ([i915#13707] / [i915#14544])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-rkl:          [SKIP][282] ([i915#3555] / [i915#3840]) -> [SKIP][283] ([i915#14544] / [i915#3555] / [i915#3840])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][284] ([i915#3955]) -> [SKIP][285] ([i915#14544] / [i915#3955]) +1 other test skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-panning:
>     - shard-rkl:          [SKIP][286] ([i915#9934]) -> [SKIP][287] ([i915#14544] / [i915#9934]) +4 other tests skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_flip@2x-flip-vs-panning.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-glk:          [INCOMPLETE][288] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][289] ([i915#12314] / [i915#12745] / [i915#4839])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [INCOMPLETE][290] ([i915#4839]) -> [INCOMPLETE][291] ([i915#12314] / [i915#4839])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>     - shard-rkl:          [SKIP][292] ([i915#15643]) -> [SKIP][293] ([i915#14544] / [i915#15643]) +1 other test skip
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-rkl:          [SKIP][294] ([i915#14544] / [i915#15643]) -> [SKIP][295] ([i915#15643]) +3 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-mtlp:         [SKIP][296] -> [SKIP][297] ([i915#15672])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-mtlp-2/igt@kms_force_connector_basic@force-load-detect.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-mtlp-1/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][298] ([i915#1825]) -> [SKIP][299] ([i915#14544] / [i915#1825]) +22 other tests skip
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][300] ([i915#8708]) -> [SKIP][301] ([i915#4423] / [i915#8708])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][302] ([i915#15102]) -> [SKIP][303] ([i915#14544] / [i915#15102]) +3 other tests skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][304] ([i915#14544] / [i915#15102]) -> [SKIP][305] ([i915#15102])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-rkl:          [SKIP][306] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][307] ([i915#15102] / [i915#3023]) +8 other tests skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          [SKIP][308] ([i915#15102] / [i915#3458]) -> [SKIP][309] ([i915#10433] / [i915#15102] / [i915#3458])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          [SKIP][310] ([i915#15102] / [i915#3023]) -> [SKIP][311] ([i915#14544] / [i915#15102] / [i915#3023]) +10 other tests skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>     - shard-dg2:          [SKIP][312] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][313] ([i915#15102] / [i915#3458]) +5 other tests skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:
>     - shard-dg1:          [SKIP][314] ([i915#15102]) -> [SKIP][315] ([i915#15102] / [i915#4423])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          [SKIP][316] ([i915#14544] / [i915#1825]) -> [SKIP][317] ([i915#1825]) +14 other tests skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-rkl:          [ABORT][318] ([i915#15132]) -> [SKIP][319] ([i915#3555] / [i915#8228])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-1/igt@kms_hdr@bpc-switch-suspend.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-7/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-rkl:          [SKIP][320] ([i915#15459]) -> [SKIP][321] ([i915#14544] / [i915#15459]) +1 other test skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          [SKIP][322] ([i915#15458]) -> [SKIP][323] ([i915#14544] / [i915#15458])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-rkl:          [SKIP][324] ([i915#14544] / [i915#15458]) -> [SKIP][325] ([i915#15458])
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          [SKIP][326] ([i915#6301]) -> [SKIP][327] ([i915#14544] / [i915#6301])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_panel_fitting@atomic-fastset.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          [SKIP][328] ([i915#14544] / [i915#6301]) -> [SKIP][329] ([i915#6301])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_panel_fitting@legacy.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
>     - shard-rkl:          [SKIP][330] ([i915#15709]) -> [SKIP][331] ([i915#14544] / [i915#15709]) +1 other test skip
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
>     - shard-rkl:          [SKIP][332] ([i915#14544] / [i915#15709]) -> [SKIP][333] ([i915#15709]) +2 other tests skip
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-rkl:          [SKIP][334] ([i915#3555]) -> [SKIP][335] ([i915#14544] / [i915#3555]) +3 other tests skip
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@kms_plane_lowres@tiling-yf.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-rkl:          [SKIP][336] ([i915#13958]) -> [SKIP][337] ([i915#13958] / [i915#14544])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_plane_multiple@2x-tiling-yf.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
>     - shard-rkl:          [SKIP][338] ([i915#14544] / [i915#15329]) -> [SKIP][339] ([i915#15329]) +3 other tests skip
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          [SKIP][340] ([i915#5354]) -> [SKIP][341] ([i915#14544] / [i915#5354])
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          [SKIP][342] ([i915#14544] / [i915#9685]) -> [SKIP][343] ([i915#9685])
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][344] ([i915#14544] / [i915#15739]) -> [SKIP][345] ([i915#15739])
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          [SKIP][346] ([i915#14544] / [i915#6524]) -> [SKIP][347] ([i915#6524])
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][348] ([i915#11520]) -> [SKIP][349] ([i915#11520] / [i915#14544]) +6 other tests skip
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][350] ([i915#11520] / [i915#14544]) -> [SKIP][351] ([i915#11520]) +2 other tests skip
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-rkl:          [SKIP][352] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][353] ([i915#1072] / [i915#9732]) +10 other tests skip
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_psr@psr-cursor-mmap-cpu.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-3/igt@kms_psr@psr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@psr-sprite-plane-move:
>     - shard-rkl:          [SKIP][354] ([i915#1072] / [i915#9732]) -> [SKIP][355] ([i915#1072] / [i915#14544] / [i915#9732]) +12 other tests skip
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@kms_psr@psr-sprite-plane-move.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][356] ([i915#5289]) -> [SKIP][357] ([i915#14544] / [i915#5289])
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#3555]) -> [SKIP][359] ([i915#3555]) +1 other test skip
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-none.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-rkl:          [SKIP][360] ([i915#14544] / [i915#3555] / [i915#9906]) -> [SKIP][361] ([i915#3555] / [i915#9906])
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@kms_vrr@negative-basic.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@kms_vrr@negative-basic.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          [SKIP][362] ([i915#8516]) -> [SKIP][363] ([i915#14544] / [i915#8516])
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@perf_pmu@rc6-all-gts.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-rkl:          [SKIP][364] ([i915#3291] / [i915#3708]) -> [SKIP][365] ([i915#14544] / [i915#3291] / [i915#3708])
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-3/igt@prime_vgem@basic-read.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [SKIP][366] ([i915#3708]) -> [SKIP][367] ([i915#14544] / [i915#3708]) +1 other test skip
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          [SKIP][368] ([i915#14544] / [i915#3708]) -> [SKIP][369] ([i915#3708])
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18130/shard-rkl-6/igt@prime_vgem@fence-write-hang.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/shard-rkl-8/igt@prime_vgem@fence-write-hang.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
>   [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
>   [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
>   [i915#15492]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15492
>   [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
>   [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
>   [i915#15734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15734
>   [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
>   [i915#15804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804
>   [i915#15805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15805
>   [i915#15815]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15815
>   [i915#15816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15816
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8898]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8898
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18130 -> Patchwork_163040v1
> 
>   CI-20190529: 20190529
>   CI_DRM_18130: 4a30f5fa0fe382b3915a8208a483d0044c40b9eb @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8793: c623172fdd4dd92bb23dbc55b3930c40266c3e59 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_163040v1: 4a30f5fa0fe382b3915a8208a483d0044c40b9eb @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163040v1/index.html
