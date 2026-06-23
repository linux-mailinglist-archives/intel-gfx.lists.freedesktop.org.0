Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m43eMkx/OmpD+QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 14:42:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28ED86B7272
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 14:42:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=IEYS9waV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC5EA10EB00;
	Tue, 23 Jun 2026 12:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A11E10EB00;
 Tue, 23 Jun 2026 12:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782218566; x=1813754566;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=m4GWxL7OYnXpwmbU/pUph72xtb2bYLLyXcF6n3KVPyI=;
 b=IEYS9waVk+w1uHgT5hH/44t5HQquz/Q8qZOfBY6tf0ICvrKHID/vdlo1
 FG4MGLajvpLfkt45f3EK6b755l0TvUt+/PhRfPnvuj1eCDZfWOvpUnLBt
 jTCmUlRH6un11VIdd2G9uPpdbm0NhtImmbnr6KN+qtIgoMnq20AtsewGs
 HyFka+EEhoimwgsdubXhTfjKNeaptVXfACnQJp8cjixu+OdFWTVvLbkms
 qCf4FGvqyyUBZ1DofMc67u6cER8p5XLoWN+dTpBAdHD1DWISN22eGAmDz
 L14uV3aq/UZ07wdjNMp6ro07RZbnscuYOJKruzev/Q3gsqKVOoe6XXS/c A==;
X-CSE-ConnectionGUID: 05yS6unzSHq28jgNUbblFQ==
X-CSE-MsgGUID: lLJc9UdVQXmjUtAYk+yzFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82064290"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82064290"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 05:42:44 -0700
X-CSE-ConnectionGUID: mf7d4kZVTaSABFJOMCrwJg==
X-CSE-MsgGUID: 7DcIQwttRi+cOdPQVxD9TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="245151064"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 05:42:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 05:42:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 05:42:43 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 05:42:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MKA+CHGtPOeFna4rQtUpT1In2IOyFjKS+P98UYliomq9WSKlHycJeCi3BWk86xmHjjAbUgBMCM5pjGdxdZ/r2kmxqy1V/HlipbmErTlOZXH3F7I6Gqm+17xJDeCdV0nxJ0q+xBCslrxLWxJ3cr8JKhMHOPRZWhRX4sNkUBlmVZHdTj4+8At6ynMKB5zegH74XmxWn2fudImxkQT0dtvh/+D9Qxhb8qlQ0caYa8ZUcZdYRBGZGcDI1wsc+R8tbguLxiUh80hMkzF3QjQfhwfNu4GPqnf7ypNuZsBskTrRFJs4LcSqm6c2bBa6ihYrnAXHA/KI7v1jvpe3zvRIgte40A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l2HREUY2+4ay298fwcXSurKWi6TClVjU8Y5UK77QQcc=;
 b=cAZyK0hN2EZ2ASuR2fcrpWzncgpkQ12SbI5pIRzVaT5rRIL36lH5EqibiTnKCfu+tOC4FfRjBPUJQUDF19yZn3FQ6fyW9yBRYRPnLT9oTWpxGYJPcjQws2cTp2l11M8r6+OUaSv0bSIBNur/vX6n77rzJeAVmYkbTUIZHb8Es3DShsQBfRkrEXCG4BQw9lSrFiFp/oIgklWf9QM7TyCgDUnGkQpRo/MnPSRJUJhD8p6eTAuARL8AfZesj0i3okRbWEm97qBztfVhVnByG5GkySIZwf44Xi4IncGl7fRRsK4kPtHqjeNzkfi4b1h32QYMXHbiOkIccmJbty6tonlGMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5896.namprd11.prod.outlook.com (2603:10b6:a03:42c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 12:42:40 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 12:42:40 +0000
Date: Tue, 23 Jun 2026 15:42:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 05/28] drm/i915/dp_link_caps: Move forced link param
 helpers to link caps
Message-ID: <ajp_OhvmDVWBzebJ@ideak-desk.lan>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-6-imre.deak@intel.com>
 <d54ec733d1f389776c706eb54fc38e03936e2634.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d54ec733d1f389776c706eb54fc38e03936e2634.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DDA5.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::6cc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5896:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ecbf570-d840-489a-0f64-08ded124e9b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|18002099003|22082099003|11063799006|56012099006|6133799003|4143699003|3023799007;
X-Microsoft-Antispam-Message-Info: FqV1JEkVOO3GjMQhsfK9gagW0V/0YrEkF9JKT9PPBNzQb5u46u0JByrGh4HQItXVhRmPwtGp6ZGfzcoabYYjat1eJKFOc2w3wJBoMmX0yELpOhCkFwN+vq6U+oFcuDAlBRgQG638L+i/hlrBAWXgyEjJf36TVXxcFBWoud990adKC5HpxqilnMSGS7K+ym6KSeDr162jAGlBH1/yznIrGm7iF/d5upwg5uZpMKrgIyq9LhpIgakFujovxWtUvI3qQlnZVT8exj5w5f7pqBykZp9FofyG4LI2DCE4Sz8E8csgI67GtHHL2eW4ug6PC53CEFHA5fogF6rzVK4ofzW/jLKfUj+77VgCCpHW0Tdjy1wMIv7tD6hOiv9yWNSOKpNDEdwKn19DfsMUDyvf/uFWe1/Q0HGjhoBytA+JcRRXHR7iP7K+pe7ie1OfCvhdC3OE/SWBaXAW3nK8TTKmuLjCDs/lPyVTU2gqqKeB07+wg9D3KP0ITWhz+E7n+s8YqQlslOossNqYxktF/4MzoWWDkOfplNycnN/IBytSP2sNPS75lDbMtBBWMVcPlUe6T7EhgRgyMpf6HfgTl0t2Y0KZusmnIzGkcj2Q4OYczehvnuuBEDG1lOGM5a+4NPM5fBtaJvkZZIVMRsa+IbnuD2Bw57wHrnPSBrNnh71tWtVnTe8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(18002099003)(22082099003)(11063799006)(56012099006)(6133799003)(4143699003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XQl0wPrCJ3KkWOgYTQhuTFTxFls7198duKohx8eY0AIzxafXh2tDapYa2FPS?=
 =?us-ascii?Q?S9u23LFtgbTMKlo+Kvh8dbTbFx9rTrjYpcf/vZpf3T+2Y0zBcoAE/RsvnFZm?=
 =?us-ascii?Q?EfZ+J7IVw/XiL1XmfFjAVyJoy0lCCE8lOjM/Aw+V+nXmbjINCbUqsWxEZywb?=
 =?us-ascii?Q?wPTVb5zpe77X7bkuosGU74yiYC81OVEt3plwSCd3oPEYuho8DpS+ip0xE9uq?=
 =?us-ascii?Q?h9iLFfo1V9NeJl2ElbeMAFW6rxSHAkjuJi6BmQoqWwkowvCHVt533hibQe8W?=
 =?us-ascii?Q?7k7N57T7oCH+tYn6CEYVvVLpP0zKuiCDzLtu4bOkmflmu0DOX3xRZGTO+F0N?=
 =?us-ascii?Q?fKUMfOlzNO3yy1orbnBQu1m3QGvfJYrHvaa62qWmgiJ62qRM7DVyoVWZSP6M?=
 =?us-ascii?Q?JTst5OgMlD1/+J1q3wFrwVa1bWT/JEmaEoEQa00Ibhoe45cr/icf80zRUtf6?=
 =?us-ascii?Q?qyVIU1OUNxO4Ee647qheHfPpaCIvPrdyE+wdO3dB9J1mFogLRacniPUtAUWh?=
 =?us-ascii?Q?5rKwLeKiaNw2Sh35euIxSdNlPgomNY/Nmcf7pEGSUL4wInaJplEMhnTydtix?=
 =?us-ascii?Q?iKk9pv5RVAUgLhlaPOafx9+KQohFB35b03sTqBlGZt6a7TO3PYhYPNTEosv/?=
 =?us-ascii?Q?vIlXJV5fkI6Ihs8r/GTdoqnDolKHByEQJZhPnb915R2OCz6IJCgDD/+fKl76?=
 =?us-ascii?Q?2kcRma/hHtRieFlz85z8jKrXtLPl+vzEndR0ECMRnOmwHynfR2SKFngADYrb?=
 =?us-ascii?Q?kFHW1VUYMXWQuGkT/IOn79cjoFg9QQCY4oTIdmPTgYepPqkVifktSuTwHTYE?=
 =?us-ascii?Q?OgxPUMtqsz4/LRh+OkzIyTvchQb5QgQlaRsF2IaUKRV55uZQaywce2loSt6P?=
 =?us-ascii?Q?2KV7nXhx1poPf4vDFK1cFbp8yhpvVJaLlRBzgjGs2EY1klOZO/n/Ph9M0AUl?=
 =?us-ascii?Q?sEqHCiXVkK62/PrN9iombObm+lTBmrvGtx5fWx69JwW9hUx/kokReKyW3X8D?=
 =?us-ascii?Q?06w5DVOKAL3TNdsdgnRjlKUb7Qd8h3E9lLCFB+YqOs7qlSDKeLGcgGe5SNMp?=
 =?us-ascii?Q?UcrTkDqUdwQy1yQPwv7jpMeDHRL3ysnVUka7vQs/c89n/SCdt8BJGL6//9FQ?=
 =?us-ascii?Q?gBCnCSNqwrVsRQ6KbenPUlZmH92eAE0ZBvsT9Ln/gW5tlFmXX4KbQXw+BL++?=
 =?us-ascii?Q?0cmbtWzRCtkbxpfUkm7efEwnBTJ80ccRrF1syqsFweWX8yCwv7SJ+9lY60Zw?=
 =?us-ascii?Q?vQPdLenvL6kjUmkQvYshRTZVYj+Na5CkHpDWUXQkL5B+NWDpTK/55+BU2LZK?=
 =?us-ascii?Q?JcifgZ2sVIXlCmQoKhE2Pz4dxGJ5PfxnceMwBoWr29mSHcBxKcf9XnxFB6dW?=
 =?us-ascii?Q?Bhd24FrjbYY7zcGlgOyPubiOrtXrD8VGGDqBUPQQ3TywrtXmyeILdaWFJ6Wo?=
 =?us-ascii?Q?nvHJn9ETE0dw97/3GBEnhu2uxDUK3b9sAMzmxjM2NIP+h/23l4M3url73ryN?=
 =?us-ascii?Q?vFLW3/rrpukpvS53rVmvDyBGo4JEB4Fv9yxOMuab7qtMdVuvgStI2EFK46GA?=
 =?us-ascii?Q?p7QY/+zuvt52biRHW2aw+lvgvdFLSASyK6ks+urdKuYrDe22lhWWti/q1s/P?=
 =?us-ascii?Q?5l+wC/KmqvMKO0QAaVYxAqjbyauEdksAaL+tcVhzXUVSrGSRxhGKgdbQEa3A?=
 =?us-ascii?Q?ulBbh15ojwj3vfcUrEDjaZYGCShE6HbVTkEbJnnU3mIcOuoYsZ1aU6K8Iqwi?=
 =?us-ascii?Q?XYwSw69R0g=3D=3D?=
X-Exchange-RoutingPolicyChecked: HZxUoPsdszPi8P+BQJ2p0bM5R5a65Ptpi0iliyyt0QpkvPTkOOorPUWhzWvBfUpzVdqJ0rCUgslrFvemuugPwLy7JnJDHcqQXSVF/Xt0PCx9ApegDaWFZQWWu/T+GX/C9pJkev2wGCUtSz+oDlqwVZ6tlpWhd2dP3q3edkTL6aZdBAH9HZa7HATnepKlPantucZrxW7GxH6xzflKpZuazvF2FhGPRP9CflvmKXdMf+R0Y6poeuMzRwFCBj4cjoYJzMKlvDc6+FUiwU1gBJnot8uhKr3g2J8exi76UsQkmI4EAOq65lZRCaTUlvRS7w/ClTUBDmJpV9JfGg8Q32vZ5A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ecbf570-d840-489a-0f64-08ded124e9b8
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 12:42:40.5663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mWRQPJcA1FHvlX3/KFemIwMl/ZZQ0QB0GkbXtTwIoEb87lQboT6VEGqe8r5jvQHa/8Y/bZdsB5Cf6bwh1sf0kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5896
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:replyto,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28ED86B7272

On Tue, Jun 23, 2026 at 01:22:41PM +0300, Luca Coelho wrote:
> On Tue, 2026-06-16 at 23:08 +0300, Imre Deak wrote:
> > Move the helpers handling forced link parameters to intel_dp_link_caps.c.
> > Their functionality is part of the link capability logic and will be
> > updated to use the link capability state in follow-up changes.
> > 
> > Return the forced link rate and lane count through a
> > struct intel_dp_link_config, which is the canonical way the rest of the
> > link capability API will also accept and return link configurations.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 39 ++++++++++---------
> >  .../gpu/drm/i915/display/intel_dp_link_caps.c | 22 +++++++++++
> >  .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 +++
> >  3 files changed, 47 insertions(+), 19 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index a34d3704a5667..7643fe079e15b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -364,17 +364,16 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
> >  	return intel_dp->max_common_lane_count;
> >  }
> >  
> > -static int forced_lane_count(struct intel_dp *intel_dp)
> > -{
> > -	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
> > -}
> > -
> >  int intel_dp_max_lane_count(struct intel_dp *intel_dp)
> >  {
> > +	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
> > +	struct intel_dp_link_config forced_params;
> >  	int lane_count;
> >  
> > +	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> > +
> >  	if (intel_dp->link.force_lane_count)
> > -		lane_count = forced_lane_count(intel_dp);
> > +		lane_count = forced_params.lane_count;
> >  	else
> >  		lane_count = intel_dp->link.max_lane_count;
> >  
> > @@ -391,8 +390,12 @@ int intel_dp_max_lane_count(struct intel_dp *intel_dp)
> >  
> >  static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
> >  {
> > +	struct intel_dp_link_config forced_params;
> > +
> > +	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
> > +
> >  	if (intel_dp->link.force_lane_count)
> > -		return forced_lane_count(intel_dp);
> > +		return forced_params.lane_count;
> >  
> >  	return 1;
> >  }
> > @@ -1655,23 +1658,17 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
> >  	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
> >  }
> >  
> > -static int forced_link_rate(struct intel_dp *intel_dp)
> > -{
> > -	int len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
> > -
> > -	if (len == 0)
> > -		return intel_dp_common_rate(intel_dp, 0);
> > -
> > -	return intel_dp_common_rate(intel_dp, len - 1);
> > -}
> > -
> >  int
> >  intel_dp_max_link_rate(struct intel_dp *intel_dp)
> >  {
> > +	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
> > +	struct intel_dp_link_config forced_params;
> >  	int len;
> >  
> > +	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> > +
> >  	if (intel_dp->link.force_rate)
> > -		return forced_link_rate(intel_dp);
> > +		return forced_params.rate;
> >  
> >  	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
> >  
> > @@ -1681,8 +1678,12 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
> >  static int
> >  intel_dp_min_link_rate(struct intel_dp *intel_dp)
> >  {
> > +	struct intel_dp_link_config forced_params;
> > +
> > +	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
> > +
> >  	if (intel_dp->link.force_rate)
> > -		return forced_link_rate(intel_dp);
> > +		return forced_params.rate;
> >  
> >  	return intel_dp_common_rate(intel_dp, 0);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> > index 37ffd714c6a42..1d3a3ff007a03 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> > @@ -41,6 +41,28 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
> >  	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
> >  }
> >  
> > +static int forced_lane_count(struct intel_dp *intel_dp)
> > +{
> > +	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
> > +}
> > +
> > +static int forced_link_rate(struct intel_dp *intel_dp)
> > +{
> > +	int len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
> > +
> > +	if (len == 0)
> > +		return intel_dp_common_rate(intel_dp, 0);
> > +
> > +	return intel_dp_common_rate(intel_dp, len - 1);
> > +}
> > +
> > +void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
> > +					  struct intel_dp_link_config *forced_params)
> 
> Is this really _get_? Usually "get" in the function name in my head
> returns something (which in this case would be the forced_params), but
> here we're actually setting them.

The function really just returns the forced params tracked in link_caps
and the returning happens via the forced_params struct pointer passed to
the function; so get is the proper name for the function. "set" would
set the forced params in link_caps.

> 
> Should it be _set_, or maybe "parse"?
> 
> 
> > +{
> > +	forced_params->rate = forced_link_rate(link_caps->dp);
> > +	forced_params->lane_count = forced_lane_count(link_caps->dp);
> > +}
> > +
> >  struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp)
> >  {
> >  	struct intel_dp_link_caps *link_caps;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> > index 3248777d1287f..61dbce86ee3d0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> > @@ -5,12 +5,17 @@
> >  #define __INTEL_DP_LINK_CAPS_H__
> >  
> >  struct intel_dp;
> > +struct intel_dp_link_caps;
> > +struct intel_dp_link_config;
> >  
> >  int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
> >  				   int max_rate);
> >  int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
> >  int intel_dp_max_common_rate(struct intel_dp *intel_dp);
> >  
> > +void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
> > +					  struct intel_dp_link_config *forced_params);
> > +
> >  struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
> >  void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
> >  
> 
> --
> Cheers,
> Luca.
