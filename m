Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jCDHNgNfS2ooQQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:53:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1C170DCDA
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:53:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=fgJZerN6;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A682110E7EE;
	Mon,  6 Jul 2026 07:53:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E4E510E7FD;
 Mon,  6 Jul 2026 07:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783324417; x=1814860417;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=bSzCz5akKy6fPxkalYFodeiQjNO+f0AX/EWzNL0n0CA=;
 b=fgJZerN6FftuKT2Xshi1j3vgbAn50WPWfTJTAo1fFe/BRPK6m1rMtadY
 PdRYCVdbcyPcir/iE+PtIrOR/+7Gy+hnFGFQhdiN57PIjUQ6GAr5iT60E
 iMD3WlN7KZ9GMKnhh3mdVw2lqdYac8l1oK1talp1+ZkUirF8LAoz4pvWB
 JSDvmsrehSurhh9ADEe4fslDXEi91A/kNrl69DSSa4qrl4FezUSNQAUqO
 opgu0410yX9U6pl6Fv3SuTG4vUmCpkCu8r0zQ23rJUeoX0bBLmmauAIM6
 IyyrnzUWUufNK6OPde72yrsw38gAI6GXlVkQCOKT/HdcR01CBTLNE/AeP g==;
X-CSE-ConnectionGUID: ntOLGqu6StWMeghFPxbZHg==
X-CSE-MsgGUID: 0/NwnH7kSaOE/ahxEJbiQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="84044359"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="84044359"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:46:09 -0700
X-CSE-ConnectionGUID: azDBiKY4RK+hyI5kcNvEWQ==
X-CSE-MsgGUID: g3qvQiqPQQOeZc4SPLfvKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="249197308"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:46:09 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:46:08 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 00:46:08 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:46:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qdqu2UXnWXqgDJ5lFAv91D7SVA0N2nqsHcOGjMRWxs/lYy2Imbx+8vvgfQvKXuBDIoUZtTo5WdCHsNXq3r76e/Zk3x9FiL/SrHW0a/BtbiD4cdHIdsJUXfqWOQJwgUEk8SSizPGwZXT7xTntdFS64iCCMMHQ/TT+ufFaZpmzDWnZWGbrz2kcpK0SzyhdYPS130t8rFZWXF53kymZXRTvKfaPz5sQ9YkWAlVWp5MYZmgGdmp6qlHpVIqlN8edc+SnPZjriATeMMQst1fMbhQmKl7tFlUo6avuJczflRaPa9LGFbfmw2qUkkGyIZZmCj1U15l6usaBDO3d+k6NipYGsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GY5H4yw0zQ3ZlYxu5ik9/sdFp/tl8ONXU85jHciQMu8=;
 b=G0qmZoScD92e7e8ohfPzC4jAvfD2D7QzqJQTU9rr3wn6mBzrlA7nN+nDcknpDZ0cfAcNUyI48ttfZWhITa0xeTas6oK/98HHj0aRnpAi9YIxxAngQO1wYZlCEHfhDEOeNVF3Tiyb/ViboTO816OnoMMgUAHWmXArKJc8BkuzZIxEmHFsKkrpRB7D4CK7AaKR1xyDjuZgyysvuDo+WLgPWDN3w2mzZkgqsti0UTKrFh+arCuiGpaZcFhhEv+tzRA9h3liP1K//1ClThAdpiungruzd3WhpECwvMFQJV79KJ7fwi9m6dVmVPrnqLxKzkiEik+fz2McmMAYtp3pumM76Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH7PR11MB7551.namprd11.prod.outlook.com (2603:10b6:510:27c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 07:46:05 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 07:46:05 +0000
Date: Mon, 6 Jul 2026 10:46:00 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 33/34] drm/i915/kunit: DP link: add update config tests
Message-ID: <aktdOMmoEAL2UGFI@ideak-desk.lan>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-34-imre.deak@intel.com>
 <54004525-f3cc-614c-5edf-db3259137594@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <54004525-f3cc-614c-5edf-db3259137594@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00023986.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::376) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH7PR11MB7551:EE_
X-MS-Office365-Filtering-Correlation-Id: 46975e65-6356-4948-985c-08dedb32a254
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|18002099003|22082099003|11063799006|4143699003|3023799007|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: HUNpONE5xiWubdqDspvfIE+rUr/QZbMeJ8hSJ1jgeQsUMq8PrcmgJZvKFV1dT7Ysb0WsKP9qPeqmqPCkVuAaxNadQ5f3i50JhejCN5KFs9IHctdw2AcZ6YdqSMi+UPlnvDBTy0UC57/ZtjI3Bvj3uUAgikmBcNcnXeNsADrnDIicsIsLXnYfC8C9GZqRTSaTt9nNPtc44uYa4ghreSw+mBPxUBr4O9MxPUgMZ4S7vWk1YdtyR76eMxKbt4VUOOuPVkx+q47Bee/Ce2tYOF9HEh9zD48O2gnmo7nMNMeHKsXPOdBp1Oc+sQQ8MtQuZi+3E6NP/7Bb+oH2t+Sl/hRrdTSCkwjODRXZ/u2TuNDUR/M2haZUCrmprJhD4y1e/udpiENwXrM/If4jjscQibIiOt8J0WMz9UyIvwze7t5K1OAtRk5qnuRS16q9VglBVTmK773INAF5BLv4bDIz6c5Ujhob39JmRBW1elmIwq/8pIwsv5LMEHudke2nka/jZAqtXFvJ1vij00PriAflM9qbZItXEUDKAtyYuN/XU6HeMwenwEFI/E8J+YM762z5VD/nZTC5M4qtyRJRm9Ugo/TgwG63DgmcNmW0S7HwBuMrWV6f87lC/CBMV3ykldazAJchIQbFH3dr7o58daM5/MHOYalp1Yh4eVgz7hwEDE80qrg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(18002099003)(22082099003)(11063799006)(4143699003)(3023799007)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cW1FdlJUUTRieUpKd3lWTnBNemwrZk9aek1ydFNRTkpZWWVEVHFrYnhyU1Rm?=
 =?utf-8?B?dDBiSHdWYlhtQjJQenc0YnBPZS9rVU5JVzlIS0lXUkF4YnVyaFFpcGZ2bFlX?=
 =?utf-8?B?SUMrTVBOcXlmVkthZWhTc0hwdGxWd2RpTGJ0TllGQ3RqQUsrbW92YytwK29R?=
 =?utf-8?B?ekhQSWpWRjJrYTZJSEJwQ0VIc21MVVo0SWZNbytuV1JLK2h3NWQxTnk0WU83?=
 =?utf-8?B?bnNoVEY2czRPM0MxUWMwRTIxMG00YkNNVU5QaWNPMUt1RE5uZlppZUxjK3Zx?=
 =?utf-8?B?ZER3OVA5UG5xTXhtcWRQQ0xxMG9XQnhlQkd3RkpyMFpkYnB1c1A5MGR5c2Zw?=
 =?utf-8?B?QjBXeE9FTXJxd01ic08rTmRNekdYS0FNenhlNHJLSEtsY0d1dE8wRlRKRFU1?=
 =?utf-8?B?MjBTSWwzQ0ZmZUQxQWtQRzZJamJ6anZ4cDlsL3IwcnMyWitPaWY5eUFuVzhw?=
 =?utf-8?B?UTZBZE50WGNyd1FCMEdKZTRON21KK1VibDNpK0tteTJjMGppa1hrTVc0WUVB?=
 =?utf-8?B?T0pXTk5zVno0djFtclBla016d3B1SHZKY0cxN3dzZWJwcG5wUlB0d0ZNbUN1?=
 =?utf-8?B?MDF4bkgxWjhlMlE2QW1RMkY4MCtZY0dSY3JCWGNRbW11MHZlWVNsNHNHM3Nn?=
 =?utf-8?B?ckZoMk05TmttTjk1Mi9neWVLcGtrcG9kN0tDLzgyVU9RZlFzdmxreDlQNldw?=
 =?utf-8?B?S0cxZUY5L0VQQmUrNHpEQ2ZQVlloZkw0K0NibFduOUgxQi9ZaWNGSDhLWG1u?=
 =?utf-8?B?c3ZOckRuOVBpYmVZeWFuNnd3OVd2YlMvQjJaYmFwdjEwS3Q3UmF2WDZmNnZM?=
 =?utf-8?B?Uk9SckFHR3JJKy9qc3paelU0NmNzRFQ2YTlUUWhZZVlBcElySnRSZmg1bWxk?=
 =?utf-8?B?ekRrN05scEIyMUIvMjc5YllXMkU1R2tUZkI2WklObk1GMUxPeEN4TktRRDU2?=
 =?utf-8?B?cTBPL09EODdXVXJCcThjSzd0cmNtbkwwWjgrNngvcUJlZkhiWGdQcnhUN2Ju?=
 =?utf-8?B?eE1aZ3ZJRXdWR1J0Mm5UaTVDcXZ5SEVBVVFUNzUvM2VGMmlWc29WZUhVaGov?=
 =?utf-8?B?b3JYc1Z3ZW5qUWxqVk5laVFFaEhwYjB0SFhoN2VSdU5kQnlLK1JMMEJYN21I?=
 =?utf-8?B?ZEwvVUhpMW1sR0dVUksxeDRQRFR4aHdpeFBmMkpNWTExbjZ6THJCWmJmNmtF?=
 =?utf-8?B?NzVYaTNVOFlRSFc3UmdDWUk2S1FaNTNMUkNSNzZFYWVsV3VZMWdwVkVGakdS?=
 =?utf-8?B?Y2RibzQwZ1dSYmJudlFQSlZVK2sxTUM0OEwxaWhIZXUrL3A1TnRSWXlTVktk?=
 =?utf-8?B?TVlCYzliK1V1WEZ0QzQyb3cxVDJaTDYxbDJ2QnFSUVB1WjF5bDNrRDA1bUJO?=
 =?utf-8?B?QU16bHVmaUJQNlJnTkhTc25SUHFXdzdEdlZkcUZJczlwRkgwV0lnZjljUitt?=
 =?utf-8?B?SjFIeC9CcFNkSVVEdHZqSzMyaU5aVTN3MnZTMnJDUW1hcWpCTUVaOWRiUkRC?=
 =?utf-8?B?cGNaT0F0cTIzRGNNU2k4V1pkcXZyVFRKYTdvTFVJK2tqR1BabCtVTUtSZVN0?=
 =?utf-8?B?b2tiQzl5enpuSnhWZm1VdEhzekdJUmR3VUt2cE9ObG4yaTRrNzhvQ0JmTGFK?=
 =?utf-8?B?dm5VY2NMWVVaQmdBcnF4YjNxSGx3R1hudWdkRmh1d0JMV0dFTVlqQkthaGV6?=
 =?utf-8?B?aVNhT3g5RmE3ZmhVaW1QaDJXZTRwRFRIU2ZVSkFLTVVadXd6OWtUbSt6S0l4?=
 =?utf-8?B?ZzYyT3pCMUdwTEpiekpqUkNXNzJkd3phaWtOSjRxdURvQUI0WU9CRWxkeDFt?=
 =?utf-8?B?UnhMRXJxWTlZNHBTVDBLOGFQMmRBSXMycDFxNlI4MWhDUjdPNWlKRklWb01i?=
 =?utf-8?B?Ri9LNS9pU0lPY0Z4bDNWWjRlYUlTNnU1ZlNxcjd3dU5zb1N3MTBaMWY5aXk1?=
 =?utf-8?B?R2xGdlgxdXpvQWM0emwzRXVPWkc5Ui9zRTZMZ0V4aFpjOU9McVBwcTdYR1J1?=
 =?utf-8?B?ZklUMThxVWtMeFRwcUdNTllpWjNNUU5KbkFRVEhXQXZtS0ZPTVQ0djB4ZWgx?=
 =?utf-8?B?ZXo2c0gxUmhwUytMSy9DU2J5QWtFM1U4QzFJQjVhdlRSMUVoTmZZSTkrQXlV?=
 =?utf-8?B?QVZ0Nk5TZVlEMk0xWW1SblpEbVJIN29aNXpGS0ZpM2Y3a2lvMjdjemdsNWFJ?=
 =?utf-8?B?T2RycEhJVTdhY0FkUEFaSEFUbEpobW8xQTJZL2lHMjJXaVhhK1FQTjdPdURJ?=
 =?utf-8?B?UHl6TUxURXAwNklkVlozL3daTkVzZVNQZVNSZVNCNXN5Yzc0bWVnYTRyQzJQ?=
 =?utf-8?B?bFllZ2tPYmVnNS9BN2dSMk9GZEZ5bGRUVVNlbVBkYmR2VzhzSThqdz09?=
X-Exchange-RoutingPolicyChecked: JT9ac6+vuZpAt0rNB3xYY7DkVGekQCnf1I6Hd+Xca/BBf7ukyRfQfvdofF8xdtPw4zogFLvRSZbt5OjcPVkbBIC63ayU8YySllv1RaWaBc+CG2SspuW6ZiOJ7uID88DXT+4qWnJ7d4hTjTgS/1akAnnrPukW/eoU1tmtO7uFNG7C0cTa2ChcXK9fJYz7EFWWX3/k/ZyC33IbDNCCcTgC0wikWLsKPWMSMsHN44S9K+1i9S9Ytb1dWB6+t3l1AvfH0M1Ni5dc05E8krcZyJh+3OgHtNQAac0z2/3C1L3EdPA3tds1LvPamrxqhDHEO+czGwLNg01eAqbLnfTp1HM4Dg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 46975e65-6356-4948-985c-08dedb32a254
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 07:46:05.3869 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gyXoTzlAmKIIvPJEw+DuT7Gvaz04Ustly4KvBF/vPqiCvzJ4pAuyD6FfrfzPAkZnciK3fMr2U9SbdyNI1BsP1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7551
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:replyto,intel.com:email,lists.freedesktop.org:from_smtp];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F1C170DCDA

On Sat, Jul 04, 2026 at 12:51:20PM +0200, Michał Grzelak wrote:
> On Wed, 1 Jul 2026, Imre Deak wrote:
> > Add KUnit tests for link_caps updates shrinking or expanding the
> > supported rates and lane counts.
> > 
> > The tests also cover updates with disabled configurations, including
> > random shrink and expand sequences, to verify that disabled state,
> > allowed configurations, ordering, and max limits stay consistent across
> > updates.
> > 
> > v2: Remove test cases for the now unused merge update mode.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > .../i915/display/tests/intel_dp_link_test.c   | 780 ++++++++++++++++++
> > 1 file changed, 780 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > index 1dc5bf6888990..43283245ad037 100644
> > --- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > +++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > @@ -61,12 +61,29 @@ struct link_config_set {
> > 	int size;
> > };
> > 
> > +struct test_config_table {
> > +	struct kunit *test;
> > +
> > +	struct link_rate_set rates;
> > +	int max_lane_count;
> > +	struct link_config_set disabled_configs;
> > +};
> > +
> > static const int standard_dp_link_rates[] = {
> > 	162000, 270000, 540000, 810000, 1000000, 1350000, 2000000
> > };
> > 
> > #define LINK_TEST_NUM_STANDARD_RATES (ARRAY_SIZE(standard_dp_link_rates))
> > 
> > +#define INIT_STANDARD_TABLE(__test, __num_rates, __max_lane_count) { \
> > +	.test = (__test), \
> > +	.rates = { \
> > +		.entries = standard_dp_link_rates, \
> > +		.size = (__num_rates), \
> > +	}, \
> > +	.max_lane_count = (__max_lane_count), \
> > +}
> > +
> > static const struct link_config_set standard_dp_link_configs[] = {
> > 	[INTEL_DP_LINK_CAPS_ORDER_KEY_BW] = {                        /* MBps    PBN    */
> > 		.entries = {
> > @@ -159,12 +176,56 @@ static const struct link_config_set standard_dp_link_configs[] = {
> > 	},
> > };
> > 
> > +static int lookup_rate(const struct link_rate_set *rate_set, int rate)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < rate_set->size; i++)
> > +		if (rate_set->entries[i] == rate)
> > +			return i;
> > +
> > +	return -1;
> > +}
> > +
> > +static bool has_rate(const struct link_rate_set *rate_set, int rate)
> > +{
> > +	return lookup_rate(rate_set, rate) >= 0;
> > +}
> > +
> > static bool link_configs_match(const struct intel_dp_link_config *a,
> > 			       const struct intel_dp_link_config *b)
> > {
> > 	return a->rate == b->rate && a->lane_count == b->lane_count;
> > }
> > 
> > +static int lookup_config(const struct link_config_set *config_set,
> > +			 const struct intel_dp_link_config *config)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < config_set->size; i++)
> > +		if (link_configs_match(&config_set->entries[i], config))
> > +			return i;
> > +
> > +	return -1;
> > +}
> > +
> > +static bool has_config(const struct link_config_set *config_set,
> > +		       const struct intel_dp_link_config *config)
> > +{
> > +	return lookup_config(config_set, config) >= 0;
> > +}
> > +
> > +static void add_config(struct kunit *test,
> > +		       struct link_config_set *config_set,
> > +		       const struct intel_dp_link_config *config)
> > +{
> > +	KUNIT_ASSERT_LT(test, config_set->size, ARRAY_SIZE(config_set->entries));
> > +
> > +	config_set->entries[config_set->size] = *config;
> > +	config_set->size++;
> > +}
> > +
> > static const struct intel_dp_link_caps_order config_orders[] = {
> > 	{
> > 		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
> > @@ -236,9 +297,728 @@ static void intel_dp_link_caps_test_baseline(struct kunit *test)
> > 		baseline_test_for_order(test, link_caps, config_orders[i]);
> > }
> > 
> > +static int get_num_configs(int num_rates, int max_lane_count)
> > +{
> > +	return num_rates * LINK_TEST_NUM_LANE_CONFIGS(max_lane_count);
> > +}
> > +
> > +static int rand_in_range(struct test_ctx *ctx, int min, int max)
> > +{
> > +	return min + (prandom_u32_state(&ctx->rnd) % (max - min + 1));
> > +}
> > +
> > +/*
> > + * TEST: Update reset
> > + * ------------------
> 
> Same comment as in PATCH 32/34.

To me the text below describes this test group sufficiently, similarly
to the other test group below.

> > + * Verify that resetting link_caps with the DP standard rates/lane
> > + * counts updates the configuration table accordingly for all
> > + * combinations.
> > + */
> > +static void verify_bw_asc_config_order(struct kunit *test,
> > +				       const struct intel_dp_link_config *last_config,
> > +				       const struct intel_dp_link_config *config)
> > +{
> > +	int config_bw = drm_dp_max_dprx_data_rate(config->rate,
> > +						  config->lane_count);
> > +	int last_config_bw = drm_dp_max_dprx_data_rate(last_config->rate,
> > +							  last_config->lane_count);
> > +
> > +	KUNIT_EXPECT_GE(test, config_bw, last_config_bw);
> > +	if (config_bw == last_config_bw)
> > +		KUNIT_EXPECT_GT(test, config->rate, last_config->rate);
> > +}
> > +
> > +static void verify_bw_desc_config_order(struct kunit *test,
> > +					const struct intel_dp_link_config *last_config,
> > +					const struct intel_dp_link_config *config)
> > +{
> > +	int config_bw = drm_dp_max_dprx_data_rate(config->rate,
> > +						  config->lane_count);
> > +	int last_config_bw = drm_dp_max_dprx_data_rate(last_config->rate,
> > +							  last_config->lane_count);
> > +
> > +	KUNIT_EXPECT_LE(test, config_bw, last_config_bw);
> > +	if (config_bw == last_config_bw)
> > +		KUNIT_EXPECT_LT(test, config->rate, last_config->rate);
> > +}
> > +
> > +static void verify_rate_lane_asc_config_order(struct kunit *test,
> > +					      const struct intel_dp_link_config *last_config,
> > +					      const struct intel_dp_link_config *config)
> > +{
> > +	KUNIT_EXPECT_GE(test, config->rate, last_config->rate);
> > +	if (config->rate == last_config->rate)
> > +		KUNIT_EXPECT_GT(test, config->lane_count, last_config->lane_count);
> > +}
> > +
> > +static void verify_rate_lane_desc_config_order(struct kunit *test,
> > +					       const struct intel_dp_link_config *last_config,
> > +					       const struct intel_dp_link_config *config)
> > +{
> > +	KUNIT_EXPECT_LE(test, config->rate, last_config->rate);
> > +	if (config->rate == last_config->rate)
> > +		KUNIT_EXPECT_LT(test, config->lane_count, last_config->lane_count);
> > +}
> > +
> > +static void verify_config_order(struct kunit *test,
> > +				struct intel_dp_link_caps_order config_order,
> > +				const struct intel_dp_link_config *last_config,
> > +				const struct intel_dp_link_config *config)
> > +{
> > +	switch (config_order.key) {
> > +	case INTEL_DP_LINK_CAPS_ORDER_KEY_BW:
> > +		if (config_order.dir == INTEL_DP_LINK_CAPS_ORDER_DIR_ASC)
> > +			verify_bw_asc_config_order(test, last_config, config);
> > +		else
> > +			verify_bw_desc_config_order(test, last_config, config);
> > +		break;
> > +	case INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE:
> > +		if (config_order.dir == INTEL_DP_LINK_CAPS_ORDER_DIR_ASC)
> > +			verify_rate_lane_asc_config_order(test, last_config, config);
> > +		else
> > +			verify_rate_lane_desc_config_order(test, last_config, config);
> > +		break;
> > +	default:
> > +		KUNIT_FAIL_AND_ABORT(test, "Missing order key: %d", config_order.key);
> > +	}
> > +}
> > +
> > +static int expected_num_configs(const struct test_config_table *expected_table,
> > +				const struct intel_dp_link_config *max_limits)
> > +{
> > +	int num_configs = 0;
> > +	int lane_count;
> > +	int rate_idx;
> > +
> > +	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
> > +		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
> > +			struct intel_dp_link_config config = {
> > +				.rate = expected_table->rates.entries[rate_idx],
> > +				.lane_count = lane_count,
> > +			};
> > +
> > +			if (config.rate > max_limits->rate ||
> > +			    config.lane_count > max_limits->lane_count)
> > +				continue;
> > +
> > +			if (has_config(&expected_table->disabled_configs, &config))
> > +				continue;
> > +
> > +			num_configs++;
> > +		}
> > +	}
> > +
> > +	return num_configs;
> > +}
> > +
> > +static void
> > +verify_link_caps_for_order(const struct test_config_table *expected_table,
> > +			   struct intel_dp_link_caps *link_caps,
> > +			   struct intel_dp_link_caps_order config_order,
> > +			   const struct intel_dp_link_config *max_limits)
> > +{
> > +	struct kunit *test = expected_table->test;
> > +	struct test_ctx *ctx = test->priv;
> > +	const struct intel_dp_link_caps_test_ops *ops =
> > +		ctx->link_caps_ops;
> > +	struct intel_dp_link_config expected_max_bw_config = {};
> > +	struct intel_dp_link_config actual_max_bw_config;
> > +	struct intel_dp_link_config last_config = {};
> > +	struct intel_dp_link_config old_max_limits;
> > +	struct intel_dp_link_config iter_config;
> > +	struct intel_dp_link_caps_iter iter;
> > +	int num_actual_configs = 0;
> > +	int max_bw = 0;
> > +
> > +	ops->get_max_limits(link_caps, &old_max_limits);
> > +	ops->set_max_limits(link_caps, max_limits);
> > +
> > +	ops->iter_start(&iter, link_caps, config_order, INTEL_DP_LINK_CAPS_FILTER_ALL);
> > +	for_each_dp_link_config(&iter, &iter_config) {
> > +		int bw;
> > +
> > +		KUNIT_EXPECT_LE(test, iter_config.rate, max_limits->rate);
> > +		KUNIT_EXPECT_LE(test, iter_config.lane_count, max_limits->lane_count);
> > +
> > +		num_actual_configs++;
> > +
> > +		/*
> > +		 * Verify the config's rate/lane-count values and its ordering relative
> > +		 * to the previous config.
> > +		 */
> > +		if (last_config.rate)
> > +			verify_config_order(test, config_order, &last_config, &iter_config);
> > +		last_config = iter_config;
> > +
> > +		KUNIT_EXPECT_TRUE(test, has_rate(&expected_table->rates,
> > +						 iter_config.rate));
> > +		KUNIT_EXPECT_LE(test, iter_config.lane_count,
> > +				      expected_table->max_lane_count);
> > +		KUNIT_EXPECT_TRUE(test, is_power_of_2(iter_config.lane_count));
> > +
> > +		/* Verify the config's disabled state */
> > +		KUNIT_EXPECT_FALSE(test, has_config(&expected_table->disabled_configs,
> > +						    &iter_config));
> > +
> > +		/*
> > +		 * Update the max limits for allowed configs, verified at the
> > +		 * end for the whole config table.
> > +		 */
> > +
> > +		bw = drm_dp_max_dprx_data_rate(iter_config.rate, iter_config.lane_count);
> > +		if (bw > max_bw ||
> > +		    (bw == max_bw && iter_config.rate > expected_max_bw_config.rate)) {
> > +			max_bw = bw;
> > +			expected_max_bw_config = iter_config;
> > +		}
> > +	}
> > +	ops->iter_end(&iter);
> > +
> > +	KUNIT_EXPECT_EQ(test, num_actual_configs, expected_num_configs(expected_table, max_limits));
> > +
> > +	ops->get_max_bw_config(link_caps, &actual_max_bw_config);
> > +	KUNIT_EXPECT_TRUE(test, link_configs_match(&expected_max_bw_config,
> > +						   &actual_max_bw_config));
> > +
> > +	KUNIT_ASSERT_TRUE(test, ops->set_max_limits(link_caps, &old_max_limits));
> > +}
> > +
> > +static bool max_limits_valid(const struct test_config_table *expected_table,
> > +			     const struct intel_dp_link_config *max_limits)
> > +{
> > +	int lane_count;
> > +	int rate_idx;
> > +
> > +	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
> > +		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
> > +			struct intel_dp_link_config config = {
> > +				.rate = expected_table->rates.entries[rate_idx],
> > +				.lane_count = lane_count,
> > +			};
> > +
> > +			if (has_config(&expected_table->disabled_configs, &config))
> > +				continue;
> > +
> > +			if (config.rate <= max_limits->rate &&
> > +			    config.lane_count <= max_limits->lane_count)
> > +				return true;
> > +		}
> > +	}
> > +
> > +	return false;
> > +}
> > +
> > +static void get_max_limits(const struct test_config_table *expected_table,
> > +			   struct intel_dp_link_config *max_limits)
> > +{
> > +	int lane_count;
> > +	int rate_idx;
> > +
> > +	max_limits->rate = 0;
> > +	max_limits->lane_count = 0;
> > +
> > +	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
> > +		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
> > +			struct intel_dp_link_config config = {
> > +				.rate = expected_table->rates.entries[rate_idx],
> > +				.lane_count = lane_count,
> > +			};
> > +
> > +			if (has_config(&expected_table->disabled_configs, &config))
> > +				continue;
> > +
> > +			max_limits->rate = max(max_limits->rate, config.rate);
> > +			max_limits->lane_count = max(max_limits->lane_count, config.lane_count);
> > +		}
> > +	}
> > +}
> > +
> > +static void verify_link_caps(const struct test_config_table *expected_table,
> > +			     struct intel_dp_link_caps *link_caps)
> > +{
> > +	struct kunit *test = expected_table->test;
> > +	struct test_ctx *ctx = test->priv;
> > +	const struct intel_dp_link_caps_test_ops *ops = ctx->link_caps_ops;
> > +	struct intel_dp_link_config max_limits;
> > +	int i;
> > +
> > +	get_max_limits(expected_table, &max_limits);
> > +
> > +	for (i = 0; i < ARRAY_SIZE(config_orders); i++) {
> > +		int lane_count;
> > +		int rate_idx;
> > +
> > +		verify_link_caps_for_order(expected_table, link_caps, config_orders[i], &max_limits);
> > +		/*
> > +		 * Verify iteration after setting the max limits to each
> > +		 * configurations.
> > +		 */
> > +		for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
> > +			for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
> > +				struct intel_dp_link_config config = {
> > +					.rate = expected_table->rates.entries[rate_idx],
> > +					.lane_count = lane_count,
> > +				};
> > +
> > +				if (!max_limits_valid(expected_table, &config)) {
> > +					/* Verify that invalid max limits are rejected. */
> > +					KUNIT_EXPECT_FALSE(test, ops->set_max_limits(link_caps, &config));
> > +
> > +					continue;
> > +				}
> > +
> > +				verify_link_caps_for_order(expected_table, link_caps, config_orders[i],
> > +							   &config);
> > +			}
> > +		}
> > +	}
> > +}
> > +
> > +static void update_link_caps_and_verify(struct test_config_table *expected_table,
> > +					struct intel_dp_link_caps *link_caps,
> > +					bool reset)
> > +{
> > +	struct kunit *test = expected_table->test;
> > +	struct test_ctx *ctx = test->priv;
> > +	const struct intel_dp_link_caps_test_ops *ops =
> > +		ctx->link_caps_ops;
> > +	bool link_params_changed;
> > +
> > +	link_params_changed = ops->update(link_caps,
> > +					  expected_table->rates.entries,
> > +					  expected_table->rates.size,
> > +					  expected_table->max_lane_count,
> > +					  reset);
> > +	KUNIT_EXPECT_TRUE(test, !reset || link_params_changed);
> > +
> > +	/*
> > +	 * ops->update() re-enables all configurations when called with
> > +	 * reset=true, or changed link parameters.
> > +	 */
> > +	if (link_params_changed)
> > +		expected_table->disabled_configs.size = 0;
> > +
> > +	verify_link_caps(expected_table, link_caps);
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_reset(struct kunit *test)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> > +	int max_lane_count;
> > +	int num_rates;
> > +
> > +	for (max_lane_count = 1;
> > +	     max_lane_count <= LINK_TEST_MAX_LANE_COUNT;
> > +	     max_lane_count <<= 1) {
> > +		for (num_rates = 1;
> > +		     num_rates <= LINK_TEST_NUM_STANDARD_RATES;
> > +		     num_rates++) {
> 
> Here we break line after each statement, while in eg. verify_link_caps()
> we kept all of them in one line. Is it possible to unify the style, or
> here we are hitting hard limit on line's length?

It's usual to wrap the for(;;) lines if joining them would make the line
less readable.

> > +			struct test_config_table expected_table =
> > +				INIT_STANDARD_TABLE(test, num_rates,
> > +							     max_lane_count);
> > +
> > +			update_link_caps_and_verify(&expected_table, link_caps, true);
> > +		}
> > +	}
> > +}
> > +
> > +/*
> > + * TEST: Update shrink and expand
> > + * ------------------------------
> 
> Same comment as in PATCH 32/34.
> > + * Verify that removing or adding supported rates/lane counts updates
> > + * the configuration table accordingly.
> > + */
> > +static void disable_configs_and_verify(struct kunit *test,
> > +				       struct intel_dp_link_caps *link_caps,
> > +				       struct test_config_table *expected_table,
> > +				       const struct link_config_set *config_set)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	const struct intel_dp_link_caps_test_ops *ops =
> > +		ctx->link_caps_ops;
> > +	int i;
> > +
> > +	for (i = 0; i < config_set->size; i++) {
> > +		KUNIT_ASSERT_FALSE(test, has_config(&expected_table->disabled_configs,
> > +						    &config_set->entries[i]));
> > +		add_config(test, &expected_table->disabled_configs, &config_set->entries[i]);
> > +
> > +		KUNIT_ASSERT_TRUE(test, ops->disable_config(link_caps, &config_set->entries[i]));
> > +
> > +		verify_link_caps(expected_table, link_caps);
> > +	}
> > +}
> > +
> > +static void disable_configs_for_shrink_and_verify(struct test_config_table *expected_table,
> > +						  struct intel_dp_link_caps *link_caps)
> > +{
> > +	struct kunit *test = expected_table->test;
> > +	struct link_config_set config_set = {};
> > +	struct intel_dp_link_config max_config;
> > +
> > +	/*
> > +	 * When configs shrink disable the config with the
> > +	 * second-highest rate,lane params, so the disabled config
> 
> nit: s/rate,/rate, /
> > +	 * stays around after the configs got shrunk.
> > +	 */
> > +	KUNIT_ASSERT_GE(test, expected_table->rates.size, 2);
> > +	KUNIT_ASSERT_GE(test, expected_table->max_lane_count, 2);
> > +
> > +	max_config.rate = expected_table->rates.entries[expected_table->rates.size - 2];
> > +	max_config.lane_count = expected_table->max_lane_count >> 1;
> > +
> > +	add_config(test, &config_set, &max_config);
> > +	disable_configs_and_verify(test, link_caps, expected_table,
> > +			&config_set);
> > +}
> > +
> > +static void disable_configs_for_expand_and_verify(struct test_config_table *expected_table,
> > +						  struct intel_dp_link_caps *link_caps)
> > +{
> > +	struct kunit *test = expected_table->test;
> > +	struct link_config_set config_set = {};
> > +	struct intel_dp_link_config max_config;
> > +
> > +	KUNIT_ASSERT_GE(test, expected_table->rates.size, 1);
> > +
> > +	max_config.rate = expected_table->rates.entries[expected_table->rates.size - 1];
> > +	max_config.lane_count = expected_table->max_lane_count;
> > +
> > +	add_config(test, &config_set, &max_config);
> > +	disable_configs_and_verify(test, link_caps, expected_table,
> > +				   &config_set);
> > +}
> > +
> > +static void get_nth_rate_lane_config(const struct test_config_table *expected_table, int n,
> > +				     struct intel_dp_link_config *config)
> > +{
> > +	int num_lane_configs = LINK_TEST_NUM_LANE_CONFIGS(expected_table->max_lane_count);
> > +	int rate_idx = n / num_lane_configs;
> > +	int lane_count_exp = n % num_lane_configs;
> > +
> > +	config->rate = expected_table->rates.entries[rate_idx];
> > +	config->lane_count = 1 << lane_count_exp;
> > +}
> > +
> > +static void test_update_rates_shrink(struct kunit *test, bool disable_configs)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> > +	struct test_config_table expected_table =
> > +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
> > +					  LINK_TEST_MAX_LANE_COUNT);
> > +
> > +	update_link_caps_and_verify(&expected_table, link_caps, true);
> > +
> > +	while (expected_table.rates.size > 1) {
> > +		if (disable_configs)
> > +			disable_configs_for_shrink_and_verify(&expected_table, link_caps);
> > +
> > +		expected_table.rates.size--;
> > +
> > +		update_link_caps_and_verify(&expected_table, link_caps, false);
> > +	}
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_rates_shrink(struct kunit *test)
> > +{
> > +	test_update_rates_shrink(test, false);
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_rates_shrink_disable(struct kunit *test)
> > +{
> > +	test_update_rates_shrink(test, true);
> > +}
> > +
> > +static void test_update_rates_expand(struct kunit *test, bool disable_configs)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> > +	struct test_config_table expected_table =
> > +		INIT_STANDARD_TABLE(test, 1, LINK_TEST_MAX_LANE_COUNT);
> > +
> > +	update_link_caps_and_verify(&expected_table, link_caps, true);
> > +
> > +	while (expected_table.rates.size < LINK_TEST_NUM_STANDARD_RATES) {
> > +		if (disable_configs)
> > +			disable_configs_for_expand_and_verify(&expected_table, link_caps);
> > +
> > +		expected_table.rates.size++;
> > +
> > +		update_link_caps_and_verify(&expected_table, link_caps, false);
> > +	}
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_rates_expand(struct kunit *test)
> > +{
> > +	test_update_rates_expand(test, false);
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_rates_expand_disable(struct kunit *test)
> > +{
> > +	test_update_rates_expand(test, true);
> > +}
> > +
> > +static void test_update_lanes_shrink(struct kunit *test, bool disable_configs)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> > +	struct test_config_table expected_table =
> > +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
> > +					  LINK_TEST_MAX_LANE_COUNT);
> > +
> > +	update_link_caps_and_verify(&expected_table, link_caps, true);
> > +
> > +	while (expected_table.max_lane_count > 1) {
> > +		if (disable_configs)
> > +			disable_configs_for_shrink_and_verify(&expected_table, link_caps);
> > +
> > +		expected_table.max_lane_count >>= 1;
> > +
> > +		update_link_caps_and_verify(&expected_table, link_caps, false);
> > +	}
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_lanes_shrink(struct kunit *test)
> > +{
> > +	test_update_lanes_shrink(test, false);
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_lanes_shrink_disable(struct kunit *test)
> > +{
> > +	test_update_lanes_shrink(test, true);
> > +}
> > +
> > +static void test_update_lanes_expand(struct kunit *test, bool disable_configs)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> > +	struct test_config_table expected_table =
> > +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES, 1);
> > +
> > +	update_link_caps_and_verify(&expected_table, link_caps, true);
> > +
> > +	while (expected_table.max_lane_count < LINK_TEST_MAX_LANE_COUNT) {
> > +		if (disable_configs)
> > +			disable_configs_for_expand_and_verify(&expected_table, link_caps);
> > +
> > +		expected_table.max_lane_count <<= 1;
> > +
> > +		update_link_caps_and_verify(&expected_table, link_caps, false);
> > +	}
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_lanes_expand(struct kunit *test)
> > +{
> > +	test_update_lanes_expand(test, false);
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_lanes_expand_disable(struct kunit *test)
> > +{
> > +	test_update_lanes_expand(test, true);
> > +}
> > +
> > +static void disable_random_configs_and_verify(struct test_config_table *expected_table,
> > +					      struct intel_dp_link_caps *link_caps)
> > +{
> > +	struct kunit *test = expected_table->test;
> > +	struct test_ctx *ctx = test->priv;
> > +	struct link_config_set config_set = {};
> > +	u32 disabled_config_mask;
> > +	int num_configs;
> > +	int i;
> > +
> > +	num_configs = get_num_configs(expected_table->rates.size,
> > +				      expected_table->max_lane_count);
> > +	disabled_config_mask = prandom_u32_state(&ctx->rnd) &
> > +			       GENMASK_U32(num_configs - 1, 0);
> > +
> > +	for (i = 0; i < num_configs; i++) {
> > +		struct intel_dp_link_config config;
> > +
> > +		/* At least one config must remain enabled. */
> > +		if (expected_table->disabled_configs.size +
> > +		    config_set.size + 1 >= num_configs)
> > +			break;
> > +
> > +		if (!(BIT(i) & disabled_config_mask))
> 
> Does it make any sense to do:
> 
> if (!REG_FIELD_GET(disabled_config_mask, BIT(i)))

Not really, the mask above is not a register value. Similarly to all the
masks below.

> > +			continue;
> > +
> > +		get_nth_rate_lane_config(expected_table, i, &config);
> > +		/* Don't disable a config twice. */
> > +		if (has_config(&expected_table->disabled_configs, &config))
> > +			continue;
> > +
> > +		add_config(test, &config_set, &config);
> > +	}
> > +
> > +	disable_configs_and_verify(test, link_caps, expected_table,
> > +				   &config_set);
> > +}
> > +
> > +static void get_params_shrink_step(struct test_ctx *ctx,
> > +				   int num_rates, int max_lane_count,
> > +				   int *rates_step, int *lanes_step)
> > +{
> > +	int shrink_mask;
> > +
> > +	*rates_step = 0;
> > +	*lanes_step = 0;
> > +
> > +	if (num_rates == 1)
> > +		shrink_mask = BIT(0);				/* shrink only lanes */
> > +	else if (max_lane_count == 1)
> > +		shrink_mask = BIT(1);				/* shrink only rates */
> > +	else
> > +		shrink_mask = rand_in_range(ctx,
> > +					    BIT(0),
> > +					    BIT(0) | BIT(1));	/* shrink one or both params */
> > +
> > +	if (shrink_mask & BIT(1))
> 
> here same for REG_FIELD_GET().
> 
> > +		*rates_step = rand_in_range(ctx, 1, num_rates - 1);
> > +
> > +	if (shrink_mask & BIT(0))
> 
> ditto.
> 
> > +		*lanes_step = rand_in_range(ctx, 1, ilog2(max_lane_count));
> > +}
> > +
> > +static void get_params_expand_step(struct test_ctx *ctx,
> > +				   int max_num_rates, int num_rates,
> > +				   int max_supported_lane_count, int max_lane_count,
> > +				   int *rates_step, int *lanes_step)
> > +{
> > +	int expand_mask;
> > +
> > +	*rates_step = 0;
> > +	*lanes_step = 0;
> > +
> > +	if (num_rates == max_num_rates)
> > +		expand_mask = BIT(0);				/* expand only lanes */
> > +	else if (max_lane_count == max_supported_lane_count)
> > +		expand_mask = BIT(1);				/* expand only rates */
> > +	else
> > +		expand_mask = rand_in_range(ctx,
> > +					    BIT(0),
> > +					    BIT(0) | BIT(1));	/* expand one or both params */
> > +
> > +	if (expand_mask & BIT(1))
> 
> ditto.
> 
> > +		*rates_step = rand_in_range(ctx, 1, max_num_rates - num_rates);
> > +
> > +	if (expand_mask & BIT(0))
> 
> ditto.
> 
> > +		*lanes_step = rand_in_range(ctx, 1, ilog2(max_supported_lane_count /
> > +							  max_lane_count));
> > +}
> > +
> > +static void test_update_params_shrink_random(struct kunit *test, bool disable_configs)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> > +	struct test_config_table expected_table =
> > +		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
> > +						   LINK_TEST_MAX_LANE_COUNT);
> > +
> > +	update_link_caps_and_verify(&expected_table, link_caps, true);
> > +
> > +	while (expected_table.rates.size > 1 || expected_table.max_lane_count > 1) {
> > +		int rates_step;
> > +		int lanes_step;
> > +
> > +		if (disable_configs)
> > +			disable_random_configs_and_verify(&expected_table, link_caps);
> > +
> > +		get_params_shrink_step(ctx,
> > +				       expected_table.rates.size,
> > +				       expected_table.max_lane_count,
> > +				       &rates_step, &lanes_step);
> > +
> > +		expected_table.rates.size -= rates_step;
> > +		expected_table.max_lane_count >>= lanes_step;
> > +
> > +		update_link_caps_and_verify(&expected_table, link_caps, false);
> > +	}
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_params_shrink_random(struct kunit *test)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
> > +		test_update_params_shrink_random(test, false);
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_params_shrink_disable_random(struct kunit *test)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
> > +		test_update_params_shrink_random(test, true);
> > +}
> > +
> > +static void test_update_params_expand_random(struct kunit *test, bool disable_configs)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> > +	struct test_config_table expected_table =
> > +		INIT_STANDARD_TABLE(test, 1, 1);
> > +
> > +	update_link_caps_and_verify(&expected_table, link_caps, true);
> > +
> > +	while (expected_table.rates.size < LINK_TEST_NUM_STANDARD_RATES ||
> > +	       expected_table.max_lane_count < LINK_TEST_MAX_LANE_COUNT) {
> > +		int rates_step;
> > +		int lanes_step;
> > +
> > +		if (disable_configs)
> > +			disable_random_configs_and_verify(&expected_table, link_caps);
> > +
> > +		get_params_expand_step(ctx,
> > +				       LINK_TEST_NUM_STANDARD_RATES,
> > +				       expected_table.rates.size,
> > +				       LINK_TEST_MAX_LANE_COUNT,
> > +				       expected_table.max_lane_count,
> > +				       &rates_step, &lanes_step);
> > +
> > +		expected_table.rates.size += rates_step;
> > +		expected_table.max_lane_count <<= lanes_step;
> > +
> > +		update_link_caps_and_verify(&expected_table, link_caps, false);
> > +	}
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_params_expand_random(struct kunit *test)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
> > +		test_update_params_expand_random(test, false);
> > +}
> > +
> > +static void intel_dp_link_caps_test_update_params_expand_disable_random(struct kunit *test)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
> > +		test_update_params_expand_random(test, true);
> > +}
> > +
> > static struct kunit_case intel_dp_link_test_cases[] = {
> > 	KUNIT_CASE(intel_dp_link_caps_test_baseline),
> > 
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_reset),
> > +
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_rates_shrink),
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_rates_shrink_disable),
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_rates_expand),
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_rates_expand_disable),
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_shrink),
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_shrink_disable),
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_expand),
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_expand_disable),
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_params_shrink_random),
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_params_shrink_disable_random),
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_random),
> > +	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_disable_random),
> > +
> 
> not sure if this newline is superfluous.
> 
> With all that addressed:
> 
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
> 
> BR,
> Michał
> 
> > 	{}
> > };
> > 
> > -- 
> > 2.49.1
