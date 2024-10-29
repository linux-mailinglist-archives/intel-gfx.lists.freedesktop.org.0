Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C889B4585
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 10:19:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA4FC10E5F9;
	Tue, 29 Oct 2024 09:19:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nOPuqUdp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AB2F10E13E;
 Tue, 29 Oct 2024 09:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730193595; x=1761729595;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TTBQEIpYKjDE3BncvIQYa8eD11fLvg5KQINUo//vwyU=;
 b=nOPuqUdp6fFz3s63u1G2naQUQGxymDCHk6wUnRl4Mywt/AA+Ey7cihpi
 wbYB+jbgk+yvYXuJq7Cx4M8kmg1RnIfcYWtlke0A8cEOQZ0Md+1evzWch
 02r1F8eEcNB5/CZIJgMwcQLyQa9dvQvg0w8SztxyOx/9P5d+Q17aMkUSM
 tAtdOZeFtoiFUD+sFjq6iE4aRZhzX3IWTp/o9m9cnyyRoXauQ7N5MBZ/m
 6KuQdNcKjCx282NendddGOW7k43ExlrsFJLd0OS0LOfVPsn/A6TTfmYRp
 Dg3sFW3UG3HOek5/GurqU9b8woym5Z5vErMofUtdTYCI5YjvevLkrAXQW A==;
X-CSE-ConnectionGUID: 63O6nnl/Sc+JBg4UxS1q6A==
X-CSE-MsgGUID: OQXgpGKaT0KynYl0ETokTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="32676161"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="32676161"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:19:54 -0700
X-CSE-ConnectionGUID: GfbqzR84SZuREMgaGrT8AA==
X-CSE-MsgGUID: Di4uDYjUTeGro9ydU+a4lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="86650684"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 02:19:53 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 02:19:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 02:19:53 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 02:19:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hKmu3dYK1XQzDDj1wehIIN2Xky2pmVKcUQ7WegP/gobJAl1HJT+rJRhpq1n3fDH9ekldQNdx8bvNlLBu7cpozYg6qg8My4yPygeJtGOz1gmU9ueE3Nr6sbedPCipNRNLFdD4Mj4mfyM+yX1WZ5DMadV+yepXZuCXKrdLOdK1QQxuS2XkkUWenm/q/UzG2NWlvReE3heLi4wm75jYochqN31oPMtiEAR5ygVvusJgcbHsCYUqWT/qYuVyn0Qw83hDR48WciyaThQek7FLtj5C50GVd6G/JkDCXu3qyN05pYPkmgSFnIcVIbYWaRbvFDoOX+M68oMa8ZsW9Cuh5msCZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oIcw4sPo+50deeCHLd/ajiUwalbtqEEAN1nhmT1jc+I=;
 b=zGg4W/PvAoIC7Dtp031mZutUX5F9sKCzFc3UFIdGXDvUDLbOW/KmR+RKh4mUiaD5/4G5jxvizV5HbD8PonZBjQ93//TzQWs7DIdSM4ZmCnmhKQ9N8gNDxEx74uHxiaYWQIaVxVDK+RSi4pwmbJWkafhzYw0GkI9h/krm6Nhb2R6i3JyXC1T+bYAojuC6EVJKlYucZpZvGICfqprMx9cJJNTKaw3LXpz+eBe6Yli/Jv/Oru/BCKrmSLXq5obXiOJvPPxd+FNXIS17v2sEqzjXtu4PRHejFYMD1CvpFHZ1MZL2VZgoabscaPXYJvx84KEXsm+ggMyyaW/Qjeub8dgqTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by CH3PR11MB8749.namprd11.prod.outlook.com (2603:10b6:610:1c9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Tue, 29 Oct
 2024 09:19:50 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8093.025; Tue, 29 Oct 2024
 09:19:49 +0000
Message-ID: <986d5f96-03f3-47ef-a270-531228a099a4@intel.com>
Date: Tue, 29 Oct 2024 14:49:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20241029052603.215853-1-suraj.kandpal@intel.com>
 <e7cc3d1d-06ff-4c47-b60c-84eea92b308e@intel.com>
 <SN7PR11MB6750F47789BED8798DC266DEE34B2@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <SN7PR11MB6750F47789BED8798DC266DEE34B2@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::23) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|CH3PR11MB8749:EE_
X-MS-Office365-Filtering-Correlation-Id: aed51c23-a1f3-4d7c-0e4e-08dcf7fad6b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cFNmTkJPZGlXa2RqaGQzSW5ZRjIrVXBURDVRblg2MTk2WWFCOGtiNmF1b3ZW?=
 =?utf-8?B?cGF3cUloLzI1SmFpeTdzRjRhYy9DaDNWa1ZwVWprNkExTmVlaWhSZGhFYmly?=
 =?utf-8?B?SjNGb2JRcm03aSt1eFZtTWZYemtLOW9vY3VWMnhuWFVWTmJBdzJOb29wNTZo?=
 =?utf-8?B?aCs0U0hLSHZ6a0V5Y2d3bFZpV1FTdWhjelpVSjI4Ykk3WDhWdXgxaHU5SFdl?=
 =?utf-8?B?YjRhbk1JVHlXMEU3eklzTnJYSDdxMTc5VWtreVd4My8vTFNCWXJkY0ZiaDdC?=
 =?utf-8?B?UVJnWDk3czR2RDgxdFR0VUdNK3hheG4vYlhZSkE0MWtYelltQ3RhSkVLdXl2?=
 =?utf-8?B?Q081ZktDczZIeTQ5Sm9jTUgxQXJiZ1lnK295akw0a0wwaGdPNTN0d1Ewbk9h?=
 =?utf-8?B?UnpzemkwV3Q3SWdQaGNvSUdvWE9kenVvS1hZS0QzL1AzSml3YnFzSFVQUmJ6?=
 =?utf-8?B?alV4bTJvOUwwaTl1ZDJ5cWRUaEtPN0hxeFJtTjVOdXBSVEVzUDFTaTBFK0pp?=
 =?utf-8?B?Snpqd3d5Z0pxblNEVzlFRHpFK2FCT0s5djNqUm9hT0FmYVhmMUxRL2J6Yk5o?=
 =?utf-8?B?ZjQ0dCtRS2hwOFpOOW5oM3NVUEs3WFdsdWVsNlhCQmRZNGluVFR5Y3lkZTRC?=
 =?utf-8?B?VkxTYTR4ZVlOZU1xWGZYUDN3c24vV2M0OFZ5SUVFRkFqK2VPbnIwU05BaFNQ?=
 =?utf-8?B?c0ZqQkt0UFhUN2g2YnZ3dmJrSFNpTDRWYmV1RXhUU3RiaXUyZmd5R2JHQkZ2?=
 =?utf-8?B?NmY4aCt3TWZFaE5zN1Qwdk03L3ZENmhjaTdSM1RBemtKZGV3cEpya0NuSU5p?=
 =?utf-8?B?REdjNFBRZVNOUldJRytOQ1VvNjF6RlZadnIwUG92bzM0aFBGbHFuWHYrazBX?=
 =?utf-8?B?Y1FXSEl4ejQ3TkJZUnVzMWVGbjcwa0xaTWJDMXAwSC9IZ3ZYcHZjZmgyOUFp?=
 =?utf-8?B?UnFOb0ZpUTVXVncwVEE4Mk5mTTRBWnJOME11WmttNnhLOWRlOXhyZFZ5Q2pu?=
 =?utf-8?B?bG1RQm90NXVNdTBMQmdwR2p0SGJxTGF1Vys5Yk15YkNGdGNBNmJPZkxvN1R1?=
 =?utf-8?B?bG1acTdSamhlNjVZRGlnYzNwaTdTZFEwTjUzMjNXOVlKdjFJSlpxcnpYRzhj?=
 =?utf-8?B?WTJ6L3BIdSt5ZFBkSGFRY3pRNkczM0dhN2NBRko2YmhDQmlHdDBSYVdoMmhz?=
 =?utf-8?B?VDdsOXNlMHRrbE51VlNJcjAwQm0wRmFiMGUxYSs0ZHJFNW0weGdxYnlXakhX?=
 =?utf-8?B?eXFMQU1rZkdlTXYzdGtVR0NwUjd0RHhLVWtaR0pxTTFsRnBGVjZLaDJzYVRH?=
 =?utf-8?B?M1Z5b2NabEJiY250Mm41a2prcWk5KzJHK3RnNzU2bGhQNDJ4OTZEMVlYZk9z?=
 =?utf-8?B?bFQyN1phdGhHUjhsai9lRXBjTmE4NjQvWDZWcGNwd045VE52RnAxT2xLMDB6?=
 =?utf-8?B?cUtEQXZEZ2JaMmNNS1N1aEgvYVZkY0wwQXB2RG1iMkdCWDRLelVqaHdRUy9C?=
 =?utf-8?B?d0UxOGxydDV3NE05ZHhFOEVGN21HMjd4VEF0RkRqVDJYNEo1d1plS0YyMkhV?=
 =?utf-8?B?Zm9Kai9Rd0tQc1pYYW15WHE2NUp3RmsxN3Q0bUxhVlg3Q254SVZjTS9xTnow?=
 =?utf-8?B?ck9CSUg3UTZkd0FXeUJQdWVXSXd2UzNEdGNQM20zMkJWMllWMXoyRVp6WWFS?=
 =?utf-8?B?a21yZVpVN3AzQmJqWk11dUhvRUNDKzVITU9hYVB5bkp5MXViODBqZjNqeWhl?=
 =?utf-8?Q?8KEL5MAfYMaD+guBUt2qPSWCOo3XnolVPCnfg6G?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXgvbXBFb2lsUnZIbElHVVpzcEE2dGlBZzJ0SkRUTWJSUWNTMkMxanRLSzJ5?=
 =?utf-8?B?UGdvYWlWVzJhU09tdytKZDJrRHliU1FZNUNhVWJCeGZzbzF2dmpjNkZ3Z3BW?=
 =?utf-8?B?bmhEdWh6dU9pQ2N1SEZrR3k4N3dqU25pZGpSTnhUMi9rWUhMOTVJdjhkdkkx?=
 =?utf-8?B?Mm9uVFJ6TVgyejZuQ2xMMTRQSFU0SDhrTCtoc0xTUyttYVVLWW5wSWFJUmtQ?=
 =?utf-8?B?SVVGQUtOK2xiVlBiRi91SjczZjFCM2RYZnZ5KytkQ1d5WnFjUUZYdG5aa1Er?=
 =?utf-8?B?Qi9QTmlObjVVRlYvVEc0Nmkzc28vbVFBR3JFMUZkTDg5SXdBZE04U3hsUGkx?=
 =?utf-8?B?Wk9IcTh1ZHkzRW9JL0dJdzJVT2F1T1RUNzFhN1QyWU5GYXVSaVE3L2h4enpM?=
 =?utf-8?B?N1d5N2tLK20rVzljOFBpUDIrbUdxTUsrK0R2QVJXSzZvMU1VNFpUVWZSRVNu?=
 =?utf-8?B?a29oWDZtbXdqWGdCS29vQmovTkw2V3JoOVArOXYxUnp6V0RJYWd5LzRJVUFt?=
 =?utf-8?B?dHVYVnQrVEdsWWdlWU9Zd3lRc0M5clpHRmZKYXMvbVY2UmtNYTdnU2NzSkdW?=
 =?utf-8?B?OTdsMFZBZVF4MHZxRDZWNkV6SE11c3o1ZXBMUVNXNk5oc0lhbU9XNGgyZW5n?=
 =?utf-8?B?UmRwcEVvN0phRkNRa1VmWmpyNDhzWG50Qm1uUFVSdnU4cS9rZWhMTGZTUHBC?=
 =?utf-8?B?d0Ewd1l4L2VjTnIwSFpvNEk3a3JrQVkzVmtuajgzaytVM0IxVVRPblFGa2RE?=
 =?utf-8?B?aXdaZnZSY3poUTd1aTNWS25pYnZhUXMraDR6SXphZ1hwZ2MycEQrT0ZZT2VZ?=
 =?utf-8?B?cEttWXo4SFhBMnFRNW9IVThHRmx6UzBCRVd1YUNHNFRwak80RDBvZjVWcXFn?=
 =?utf-8?B?MGN4T3MzbHdWU2RYVXFTaGlQaUFNdm9QVjg0S0d4eWw3eWRyOVJUcitueXhS?=
 =?utf-8?B?b0pGWUZDSDUzUExwSi9Ub3FBNWxhaDZVem9INFJMWkduM1BQd1laR2pkK1JR?=
 =?utf-8?B?Zk5RYWcybXRKVUhqMG9CdFV2MVZyM2txTGdWbjQwL1dIb0JGNXlpZUJaYits?=
 =?utf-8?B?WWljK2ZBcjdLVlArb1VQeFZnclpEcFArSHZOc2FFS1hhRjNoTzBac2ZnYUhN?=
 =?utf-8?B?OGZEZnQ0djE4N1hTYXQ5dTJGTnhHYTVMczVVZXFoZlJqWVFaOGNSajFibUhX?=
 =?utf-8?B?STJndWJTZmZZSjJrSS9EM2xLWnRyY1dhOHhlT3FDWlFIZ010dm03cG15cFNN?=
 =?utf-8?B?UFNRNE1JTlI5ZUtMbU84TDcyRzNtWSsyNTJKUHhIS3h5bDhaMWdGejZBeExa?=
 =?utf-8?B?MlM0QUhnZ05SNXBoVlQ1d28vMEtFUVdyTHd6bzdCTXdMS0QxdW5TakI2TTBF?=
 =?utf-8?B?UFI3WmxNNFFwWFZrSTJVK0lMVU1SOFhaYzdZU3I2Y0hPTE5ZckpsVE5CSm9v?=
 =?utf-8?B?Z3ZtOFZ3Mmp2ZUZ6UnhJOHEvMUtTUitTbGdsUDJCUy85c1h1S2dwaUZoVDJo?=
 =?utf-8?B?K3Y1YTBKQUtEcnFhZGxJaGxOVDNwa2JjM09LK0Jqb29MTUtZNDN2c0w3QnAz?=
 =?utf-8?B?b2xONmRhSmlvY2FQL2xXWVl2WFlDU2RXUU9oRlFEdVBFWW5SOGZ1U002bHQr?=
 =?utf-8?B?YWUvNURONGRNL2ZzOHFldG53VkZXbEVKNk9wWE9KV044WTBPNkw4U2dLc1Rt?=
 =?utf-8?B?dnlwUWQzQ3ZxT29SdHNpK3ZPUXJlTmZwODYyRm5DTE1DK25zTlJkV3JlM1Zi?=
 =?utf-8?B?TmlzNnVncnNLWW90ZW1jSS9RdTJqK1JNU0YzbWo2Rm4zQkhTZ1hGbC9wa2xx?=
 =?utf-8?B?SEhPSUkySldxNWp0YTFkNzBDUkFyMFlXVFJuWVRUengxZ0kvdFN5M1ZwUlhi?=
 =?utf-8?B?WnA3V1lRdENqbWhhN1Y0Y1VIN1p4R2krMi85TkFsK0lvMFRQRHFCNlR1V2hK?=
 =?utf-8?B?T1hHWXoyemVmMjJUNmNFKzYzOStmQUNTcmt3aFBkNW14TnhkVnl4bTdGZ1px?=
 =?utf-8?B?Z3JIbUc4WWNtcTRYZnZoWGpReUs2Q0hqTUdac0lSRzFKVWVhcWhSY1ZzWmVC?=
 =?utf-8?B?VW5SWDZxVDM1SlhHMlRncnEwaGZ6cVVIT2hTUm50MU96SWxrMFZ2QUlrS1VU?=
 =?utf-8?B?N0Nwb3RiMHJoM29BTXhuSjJPYWlNcjZRM3ZEaFVjOE9RYUJ6ZFR4Q2VBeUl5?=
 =?utf-8?Q?Veu5qZtfacsvBjGhBCcbqFE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aed51c23-a1f3-4d7c-0e4e-08dcf7fad6b2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 09:19:49.8701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8vmwlL2SMh5ZP/BSAstMynA39LTFZMlyJ+wdcfLI6kriaE7yK7VJbq36OzKw5NXuz00mpweqrqSJW5ZB+Kfl4Fc9gYUwzQqx9K7IfWmmD+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8749
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


On 29-10-2024 14:28, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Pottumuttu, Sai Teja <sai.teja.pottumuttu@intel.com>
>> Sent: Tuesday, October 29, 2024 2:13 PM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.org;
>> intel-gfx@lists.freedesktop.org
>> Subject: Re: [PATCH] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
>>
>>
>> On 29-10-2024 10:56, Suraj Kandpal wrote:
>>> We need to disable HDCP Line Rekeying for Xe3 when we are using an
>>> HDMI encoder. Also remove the Wa comment tag as this follows the bspec
>>> and does not implement the wa.
>>>
>>> v2: add additional definition instead of function, commit message typo
>>> fix and update.
>>> v3: restore lost conditional from v2.
>>> v4: subject line and subject message updated, fix the if ladder order,
>>> fix the bit definition order.
>>> v5: Add the bspec link and remove the Wa comment tag
>>>
>>> Bspec: 69964
>> I don't think we still address the why? part. The register and bit doesn't give
>> any explanation about disabling line rekeying on xe3 right?
>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_hdcp.c | 11 +++++++----
>>>    drivers/gpu/drm/i915/i915_reg.h           |  1 +
>>>    2 files changed, 8 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
>>> b/drivers/gpu/drm/i915/display/intel_hdcp.c
>>> index ed6aa87403e2..7a32bfef8d87 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>>> @@ -31,7 +31,6 @@
>>>    #define KEY_LOAD_TRIES	5
>>>    #define HDCP2_LC_RETRY_CNT			3
>>>
>>> -/* WA: 16022217614 */
>> Probably instead of removing it we can add the lineage of the workaround
>> (Wa_16021352814) somewhere inside the function so that we know why are
>> we disabling line rekeying for those specific ip versions and steppings.
>>>    static void
>>>    intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>>>    				      struct intel_hdcp *hdcp)
>>> @@ -43,14 +42,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
>> intel_encoder *encoder,
>>>    		return;
>>>
>>>    	if (DISPLAY_VER(display) >= 14) {
>> Not related to this patch but probably we can remove the above if right?
>> The internal if else ladder would take care of everything.
> Why should we do the extra checks for other display versions that is two checks for display_ver<14 instead of just one check
> Which would have happened .

Yeah, in that case probably we could have added this display version 
check before calling intel_hdcp_disable_hdcp_line_rekeying in 
_intel_hdcp2_enable itself.

But anyways, not a blocker for this patch at all.

Thanks for the clarification on other comments as well.

Thank you
Sai Teja

>
> Regards,
> Suraj Kandpal
>
>> Thank You
>> Sai Teja
>>
>>> -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0,
>> STEP_FOREVER))
>>> -			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
>>> cpu_transcoder),
>>> -				     0, HDCP_LINE_REKEY_DISABLE);
>>> +		if (DISPLAY_VER(display) >= 30)
>>> +			intel_de_rmw(display,
>>> +				     TRANS_DDI_FUNC_CTL(display, hdcp-
>>> cpu_transcoder),
>>> +				     0,
>> XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>>>    		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0,
>> STEP_FOREVER) ||
>>>    			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
>> STEP_B0, STEP_FOREVER))
>>>    			intel_de_rmw(display,
>>>    				     TRANS_DDI_FUNC_CTL(display, hdcp-
>>> cpu_transcoder),
>>>    				     0,
>> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>>> +		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0,
>> STEP_FOREVER))
>>> +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
>>> cpu_transcoder),
>>> +				     0, HDCP_LINE_REKEY_DISABLE);
>>>    	}
>>>    }
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h
>>> b/drivers/gpu/drm/i915/i915_reg.h index 405f409e9761..184420011a88
>>> 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -3816,6 +3816,7 @@ enum skl_power_gate {
>>>    #define  TRANS_DDI_PVSYNC		(1 << 17)
>>>    #define  TRANS_DDI_PHSYNC		(1 << 16)
>>>    #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
>>> +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
>>>    #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
>>>    #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
>>>    #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
