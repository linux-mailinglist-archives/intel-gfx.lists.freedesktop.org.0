Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KD0eLP/SJmqdlAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 16:34:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C50C26573E3
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 16:34:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cjDEoAE+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50F6810F4B3;
	Mon,  8 Jun 2026 14:34:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B4010F4AF;
 Mon,  8 Jun 2026 14:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780929275; x=1812465275;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F01kNyLutrNNuAVDRrra9mezWgV/oADjlZ7/parYTcY=;
 b=cjDEoAE+SDBsZVRvoD4q4gF2rVmrvYCNQVu6G5UpdHob8F6JVyUz0KzT
 Gd1J13KQ5w+qoNQtdq3jXfoFqANmvqGnAtiArwMIh1fdn9DKbQ8aDkht8
 1P/2Ni+T7P88nJXBIkAFZLeKscC8AYGF10qt/okUYTzn84b+Y/sn8FVSX
 AZ/qqOSnf/iqSCkMwxTrqv1C01AftoJB1SXXuh6IJqR7ZPNqA73ETtV40
 QFWKyuYf6q/NUPww0mYpI1XsErKixBUT6xnb2uDBzMwJEXAiIPFzF61Yt
 xB5elXJ4SEiEJp8AwxYR1zaUlVls88nuX8UThLFKg/IeAxyEZ3Ri5LCsw g==;
X-CSE-ConnectionGUID: Zvg656BQQne6tMNzfRVk1A==
X-CSE-MsgGUID: t3ZEUj0vQJuivj4r2VXoGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="80798031"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="80798031"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 07:34:34 -0700
X-CSE-ConnectionGUID: jYnEsDlqS8Spj6nPSdimFw==
X-CSE-MsgGUID: saBfn7C+Qpu64y1M1eiheQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="242604291"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 07:34:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 07:34:33 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 07:34:33 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.70) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 07:34:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ihtXEIenTwIRmJa8c7gbqLM9LoIA2QyXQHV5qTUJJxcC/iaNwjc8B+NvKj/bDGv3z6qp2WTxbBtFQET9kzARC+erGqKiRxC+YWc+WwDgWn8DfpXoNnvBZIWk5Xfz+mHDu+40+w+BfZKjjtsFUKWKAerYQlp1ENOo2jn1W7ytE8zUb0RNyzmhG/oRDjDupTAGz4EgzYhFVG+Cv8bfdTAk+SGJRPSXysAaEWkL+lzG8I+TJGDlO5j5e2gIqaKZAiTHvFjTe38Gs1hNF5i+7T5fMepyeOxwkXiyEWRIEtcmAXk1Bir9IEQteTC8GDaoD6pSD1xsbCGhFfFLqa4U+BocDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2kAjJgpptwLp7qczOdHr/Imt1W3B7yxYZXryyWmoWFU=;
 b=VUtmhMsG5w+U0M72EbO3Y9BiKz/iGWs/ra7ZsICAaWVcUBQt9HrOZLC1ADLqtf5kKzfnKID+4m5mPrCjzBxUxmlQOjtvtOCWz0k6dRHSK4jE7wLYOYsa/3768/AFtAxOM8kNhztszUAigTGaAE7pbVqMYP2Xj7vtYXKQUCYlksnnL9mEWZtcqzFO073vxVL4ccsgUFcnrqZHdFDziuDpsHG6FRzaazdDaPF1iZ08zvCS5RL/jTtmu/Lq7ngkiTMen70+yrOBRR2K7040n+1gx3bT+PxnwPp4pvo4G3CWWzU3nGe9RGVrRaqJ7pmIw90uf6KHB4oVMtFviFCLWZtWnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB2717.namprd11.prod.outlook.com (2603:10b6:805:60::32)
 by DM6PR11MB4659.namprd11.prod.outlook.com (2603:10b6:5:2a5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 14:34:29 +0000
Received: from SN6PR11MB2717.namprd11.prod.outlook.com
 ([fe80::5d50:a82:a1d8:7b90]) by SN6PR11MB2717.namprd11.prod.outlook.com
 ([fe80::5d50:a82:a1d8:7b90%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 14:34:29 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Wajdeczko, Michal" <michal.wajdeczko@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Jadav,
 Raag" <raag.jadav@intel.com>
CC: "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH v3 5/5] drm/xe/i2c: Report i2c irq handler issue
Thread-Topic: [PATCH v3 5/5] drm/xe/i2c: Report i2c irq handler issue
Thread-Index: AQHc9S8co7vrkGq+vkyNRADrhuPqCbYxVzaAgANcvuA=
Date: Mon, 8 Jun 2026 14:34:29 +0000
Message-ID: <SN6PR11MB27174A1CB0B3BB00FDAE460DE51C2@SN6PR11MB2717.namprd11.prod.outlook.com>
References: <20260605210534.3843211-1-jonathan.cavitt@intel.com>
 <20260605210534.3843211-6-jonathan.cavitt@intel.com>
 <cf797d6c-facc-41ce-aef3-291f7ab881ea@intel.com>
In-Reply-To: <cf797d6c-facc-41ce-aef3-291f7ab881ea@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB2717:EE_|DM6PR11MB4659:EE_
x-ms-office365-filtering-correlation-id: 639d2e2f-3c29-4d14-1a01-08dec56b0c72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|56012099006|11063799006|4143699003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: +vGXfVm9KHsNMPFreisGTrrZFyVFxv/P4VP1Yg7Uvi2ZbN9XV0L15Wn5fotaGzWBa7gdq7XKSCymbFMM8SAuOFNP+rE4oM2qp1OT2EkAMb3nY/rpb6bJ5OuANU9nmC5KHxvI7wZK4/mPQ+hiZjrMpp/qgzHr17mAgpdC57j6O5TjvPwiXsASwg1PvtoHxartehcYk9IW2dK5DocNY/TcUEvwOOHCAqnn6C+jaYamRhtxW3htE1YH3A23oUTSqiYjRhN2yarhigIecLr3+xPNzeolr40dtsz9lu+ndpauzn5ugkwqOy4UH5cjq5YnURQlN0/DAgmA0WbDBc2+/4kW/4wlAMf+pjmXA31gZ4+FKUBfGpUG0IU/gmoZ0014DbyYJghge+hnu/nC4MRv24m+d5qlDhYih5AchHihkVi1sonZTW16mH3IOlZkEy1vb8SnbO23I9RstoE4YGpnDVxRQKTqjLwVuTn9B+ElA3hzv2Pca6pyKPlYe16ujt+nPGjA1z2Q+5MuZRHk+Vn4dq7ggUYPp2g06/f3QMaG53xZ+lRyyYHRFHFm9tYQJRoJ+Y4Dz4n1Wu/E8wQN5NKFzNxcHdhSTRif6vXXyLHmBlN2h9Yu1IBYWTY0YvXD0K58r//+fptDJTDmi0z7lhibBx7PxxtwkIVJjRzNgdzmt3jSPksxvQC39mP3nwsfh4+qJDyedIF3OZ71VSLYOInTB++TE2cw+vQiK622YTU7Z2CTSlB4O2039a/FtkB080Ccz+He
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2717.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9mURfMJrKiROOS0PT1md84gE4wsQTkqMYqX9bYIXyBJxKtDOHGBLRl63/eM5?=
 =?us-ascii?Q?VGoHj4Xj4u9KMycjRe/pQhRM+/adorR3vXsH3NpouU5UyMZ7uXn6v8ARomkg?=
 =?us-ascii?Q?7mVEgjnYW24SKoKaPN7S5zNTs1WNP2zZJ5g21eFvun7+5t6oQZnr0wMIDrRF?=
 =?us-ascii?Q?XkwUdwJTklnzsslc90p2krIcNIw0iGShSIn4X02ND6i1sungBmjgjH1eyTZL?=
 =?us-ascii?Q?pQG7S7l3xuwebboV1krBJAvMXNZftrNcLtyprIy4z3nJv7tS1jZ48phEVjW7?=
 =?us-ascii?Q?6z3F3OyFCgjC38GKV+ou7QRC+1vt3+xVP+eHfyRKgOll/0y3ZNVePmV2XD6j?=
 =?us-ascii?Q?qLcIdpnnM4aF4t4JKzqcQCDWrNpjcu7HPgarEee57lsdHrNqLvNDjHJcCM0/?=
 =?us-ascii?Q?vBNbPXCll2w59+SN2ZRHVS5oO4QTHQEFMOUhYbLpOHxHv0rCT5s2HU+cpNNn?=
 =?us-ascii?Q?Cl8e2I5Y8oq2ywFqE60TEBg/JCpK8nUPIOxVtE3vfu4kceq9CszgYgsYbnwh?=
 =?us-ascii?Q?RhAbANZ/vgTUHkkSJJ4KeAAGj+0bfMYOZAGFEycFCdzKIg5VFYhBOjtP+blI?=
 =?us-ascii?Q?JbKYM3oW0ICAABN2gEBFWY9zMmeAwWnKAJKcfO/K8i8lcTGF4ydIAXEwQ/jD?=
 =?us-ascii?Q?nxDzWasetzNl1aajnDWDw/jGia2w5UXIEsh0YGNfRIKEO7eRw0YkyEdTUoS/?=
 =?us-ascii?Q?zx96k2+pTGHcEIebqUZSZvQm5aVB7ad+18xENtmlxj6DNCo3cm9br44f9gp9?=
 =?us-ascii?Q?F1K/i6MguzHFclYibaYUZzy4O8Q9H1ZHyvAm0lIZFoBqMcGUwi5mhxABPczp?=
 =?us-ascii?Q?5A8IcdlqJOprLFM3gXDQRo8Bnlbw8yrThtaoz8C5SkX9UlGbDhswttVwkubH?=
 =?us-ascii?Q?Us4ZDzp+qo1LGzReBu8IbX3xCWpi1EDz1vPOfogoS1KJnws/w5jZd9pLSkkb?=
 =?us-ascii?Q?T0vNdSqq3bkC0f9Sv24fHEUm2JOf51KZP9TjTqiGevZNM3nsRNAPoUUc2n9o?=
 =?us-ascii?Q?+uZ5cWXp6qILTeWWTIPdvseJ5cVEWkfZ+5bF/oIpdJV9GhaZABnpUpdOV4/V?=
 =?us-ascii?Q?fJ97w+ZzQoP98ZZDLLvJzx/74KCdHkh5Vq0OvmnBnPeoulLPC0YAZ76EPPvS?=
 =?us-ascii?Q?LF7I/8+oZ02sbAniQv7daA2AjhbA/3jZeGQMchK4O0AAdIuJYajwzN5HLSYo?=
 =?us-ascii?Q?rirWZY+pG1+cv9an3Crk+OhVTThfs7zwiYnrYG7XE0mdZs4xH2f4uSi9rxrB?=
 =?us-ascii?Q?BDMbGCRdhODlWWbNF4Ed2JVMeTjmKBHtNXUsEuzcXUEk10hnZ7/CeqmI3ERx?=
 =?us-ascii?Q?oVlCMxnLzze6fvB39e4lSEoWxGtYyvwv88KqoNnPIIMjwSCEW+Cq8saxcjoE?=
 =?us-ascii?Q?3d7dpzgWT1myvERxNuXkMuf0ySZDNWHytD+Y70VomNf6SCnmpICyoPInEuGK?=
 =?us-ascii?Q?WlN2fKXfhrO5AQfWtA1bRCz3HPjvW8SoT0kj0ZZXMMuIshdtVTAmUja5T3ga?=
 =?us-ascii?Q?S81Ff2kUoPMDSGqSHRg9pmHPF8TIT41a9wbFY0jlguz93gjoL5DsExKT0JOh?=
 =?us-ascii?Q?c+toAoxBxvzukKY2apzP0DJqqVm4xZF52F0dWOkSY9cw4jAbMQvmJFt9PV0l?=
 =?us-ascii?Q?i8Wdik3q8m7Sovb7PkgSKVxg462l0VII5KRF5MSxGSuqpIAzFGOkodq+rcPP?=
 =?us-ascii?Q?eLaNRCFXYnrHZPwCIEuTB3YzzSgixwiFUwLu+4/V5IacEvcMvR2QZAQ5nIC9?=
 =?us-ascii?Q?pyqvSfje6t7CLZ/gOoL6YtwJHtnrenGWWWAqjmhblSLn4W/F6vSQu44OF/+/?=
x-ms-exchange-antispam-messagedata-1: ZiWQhy/6C/J0Uw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FwSmp6wwKBBKHFJG+mpEUD82MKObIOfiBN5xnBaSPDI3k8Lwfu1fwBi7f98RCB904Xrg2flqq1eOP6Dmmn8Prt3Lqw9eYEPxQwe6oVNMlZJZsFm20gcOtPWcRr3DJUvPbLxiJM2fw/xXroBxHxBCbfVw95RCXTnbq1dGwxMa9+K7/zm/tapFpeBdx7ZgAR0EAX/NjZgcZ2MQBNLATBivNKy7Y1MrnWIHUd5B8zy3lLot66dtd6ICedXQ+7NZ/p3TI1s5u6ZPXF+dvQH5KcIUroY9nTwSI2VcS/alqElXNSa4To0rMhpMia2r43nhMhOaxrNprqKgO0XxAjjS+g3YvQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2717.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 639d2e2f-3c29-4d14-1a01-08dec56b0c72
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 14:34:29.4100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hTDsdr142szmH/jP9DSTOYFGOvi7ez9EBOmGdI6MNejWaHLU5y5C/XPWjIxdavF94fePmMUQsxV58rF+Wvt7jL4SEts74w3OO3NBvMjgmOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4659
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,SN6PR11MB2717.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C50C26573E3

-----Original Message-----
From: Wajdeczko, Michal <michal.wajdeczko@intel.com>=20
Sent: Saturday, June 6, 2026 3:40 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-xe@lists.freedeskto=
p.org; intel-gfx@lists.freedesktop.org
Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Jadav, Raag <raag.jadav@intel.com>
Subject: Re: [PATCH v3 5/5] drm/xe/i2c: Report i2c irq handler issue
>=20
> On 6/5/2026 11:05 PM, Jonathan Cavitt wrote:
> > Error logging is expected but not included in xe_i2c_irq_handler() for
> > generic_handle_irq_safe(), so add error logging there.
> >=20
> > This issue was caught by static analysis.
>=20
> hmm, what exactly was this tool complaining about?

It is complaining that xe_i2c_irq_handler() is the only place where
the return value for generic_handle_irq_safe() is not checked.

>=20
> almost no other callers of the generic_handle_irq_safe() are printing any=
 errors
> (which are more about programming mistakes than runtime failures)
>=20
> I'm asking, as if we believe that such errors are legit then maybe we sho=
uldn't
>=20
> 	"Deassert after I2C adapter clears the interrupt"

Is this not also the case for every other caller of
generic_handle_irq_safe()?  If generic_handle_irq_safe() fails,
and it fails for a legitimate reason, we really should be doing
something about that other than just logging the error and
moving on.  Since we don't, based on historical usage, I don't
think whatever error generic_handle_irq_safe() can throw is
a legitimate issue that requires intervention.

But you don't have to believe just me about it.  Raag Jadav
also approves of this implementation where we don't do
anything about the error other than just log it, and he's the
one that wrote xe_i2c_irq_handler().

-Jonathan Cavitt

>=20
> >=20
> > v2:
> > - Reword error message (Wajdeczko)
> >=20
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Cc: Raag Jadav <raag.jadav@intel.com>
> > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > ---
> >  drivers/gpu/drm/xe/xe_i2c.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/gpu/drm/xe/xe_i2c.c b/drivers/gpu/drm/xe/xe_i2c.c
> > index 148e82e01ae8..84171021e6ea 100644
> > --- a/drivers/gpu/drm/xe/xe_i2c.c
> > +++ b/drivers/gpu/drm/xe/xe_i2c.c
> > @@ -177,12 +177,15 @@ static bool xe_i2c_irq_present(struct xe_device *=
xe)
> >  void xe_i2c_irq_handler(struct xe_device *xe, u32 master_ctl)
> >  {
> >  	struct xe_mmio *mmio =3D xe_root_tile_mmio(xe);
> > +	int ret;
> > =20
> >  	if (!(master_ctl & I2C_IRQ) || !xe_i2c_irq_present(xe))
> >  		return;
> > =20
> >  	/* Forward interrupt to I2C adapter */
> > -	generic_handle_irq_safe(xe->i2c->adapter_irq);
> > +	ret =3D generic_handle_irq_safe(xe->i2c->adapter_irq);
> > +	if (ret)
> > +		xe_err_ratelimited(xe, "I2C: irq handling failure (%pe)\n", ERR_PTR(=
ret));
> > =20
> >  	/* Deassert after I2C adapter clears the interrupt */
> >  	xe_mmio_rmw32(mmio, I2C_CONFIG_CMD, 0, PCI_COMMAND_INTX_DISABLE);
>=20
>=20
