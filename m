Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z36cH2zzKGprOAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 07:17:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5BD665E7A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 07:17:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="kZ5VksS/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1464310E6C9;
	Wed, 10 Jun 2026 05:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E564C10E43D;
 Wed, 10 Jun 2026 05:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781068647; x=1812604647;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kwBzNKVzVgzMJ6lhWOGWxyX6PCC3l7F/ov3lZoD50ww=;
 b=kZ5VksS/mj7S35hU23uufQQdmg5I5svyYBn1BCiiiHGSzJrAN1f87jpA
 PkDgUlciZahn1fYpKE+rWgkNEfxRY+JvWOibEM6rftewUiSAoShwv+VTy
 X0a6uvEgSBUiCCxFeBf8qs8MMIpKY5V6XW/Q0dx87ctu3VwrIw4biMXr9
 QPdTpnWPxOb5ArjxJlv1rQjmACtvEObLVQdvBoAl8iPRpsZmQ1Svl4AyR
 ULLWkFJh5a2w8HfPi+eJczE1UoYhdX2MHY6YsUFZmsVhTUwmnwf59APbH
 v/5nfnoFfOx+G5WXUswt8b3F2tY4oZS0r8VZuPQNQ58uPu1UffsgXYQFz Q==;
X-CSE-ConnectionGUID: duZ+Z3aETnGcegSyv+TSvg==
X-CSE-MsgGUID: r1L37+MRRoCyCFFriRrKWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="92418014"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="92418014"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:17:26 -0700
X-CSE-ConnectionGUID: 2UW7gbC/Sbal5AxSXvH9RQ==
X-CSE-MsgGUID: BlOAZYHYTnu06ah1DSxvnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="269744433"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 22:17:26 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:17:25 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 22:17:25 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.24) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 22:17:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gqSXuUsqMSH2n9usrDyv1wkbPLuHO8CuHSGF4z26xADXyu23MzJRpx+kyxrXvBQhO1Kb9JNFe2SIB52PPbwh1AL4vlYJwWe96D5j2ojv7rZyC4q4MbssdkIUOMqnMRBTmf9/f7u2BAvHJW8sIPpy8QMLSTVMLBdTpHGcUNCAx8UiGqJrJWDfLbvcI07GRSELXi69A4+GNGV+soP9XBW765ngYxSJK+pQjPNd3jTTcARRi4f7vMCnRnvtG2kGkeNTdKXy5LF7eBogtQ1lM+GXjkiRlAop54XILUvataEFb2SwbyNpT2uFxzR+v9HnFRt3l4dLET31UL/4EndyhAkhEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M78ixn+XtXjShK6V9ZXiWSaDYOhCKgzFJDfptfp3ryw=;
 b=Sf7jAqXsMyq9zjpTD0d8+Q9qMPfeLDTNxhwdKaIHwuhN/yn1BekcR9FmcdCE8yIX1ymzyf4qGjxl1fM0TJsfzvrqHKwHs8uHDOmI0iVQPkEdvKPv9/D9IIvK5eJ0kuD08Aj/cz02CbX6hM/mbQR2djsLx0LuaLMiMvsHnXsBm22cLhkcp+np9oUmERXbd6TgIe4rAGkXCfqBItVcRT1UbfzQLkM468Avk0VHho8CxP5/HxJIgZBZA+OYcSdMAFEKxQvm/c6TCP4XvuROenBLhO9/xg5RZZt/zqn/5iGCUUD1C+1P+tmTd5bnDS52lW4SNNj87r2mBwTCnVHtQt3OZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5302.namprd11.prod.outlook.com (2603:10b6:208:312::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.14; Wed, 10 Jun 2026 05:17:22 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.011; Wed, 10 Jun 2026
 05:17:22 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 01/20] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
Thread-Topic: [PATCH v8 01/20] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
Thread-Index: AQHc85dAGvMoNsUUSk6FepSVEhX0j7Y3SX5w
Date: Wed, 10 Jun 2026 05:17:22 +0000
Message-ID: <DM4PR11MB6360C42516DCB79715891446F41A2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-2-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-2-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5302:EE_
x-ms-office365-filtering-correlation-id: e3ced503-d7ec-4fe2-237b-08dec6af8d4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|38070700021|22082099003|3023799007|18002099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: ehsjKcuag/LDdfiCLoimts3mLKrB3bsp5fKQKEK66f7iDIN5SxAPpd9DA1HRpEO4bgFFwg2bMCw102OhK3lybPth0fhiZop/FchV0Lgk51qrvAbFPrrC2lqPqRhpP6b37IF0BiYr83f5lddGeriA5ap0dhoa1Mfl0/t/7mAFx87Bd6G8Oe0UKgBEwCFnZWcVO9odtHTU7i0V/NpCCUk3n7B9Vt76PQk8cKoCzX77YkoMG/k2G4gnylESWxfNSGup2t31hWul67sz8PZfwoCYrbdV2vJu37UJpGGiNtxcMjV2IMYrCgQsl5OiS5H6AaPr7mZYSkLSytE5psU+mOK9pv874QFL2YGNtGLENBDPTjRTGaZKngsZpE0EfDCnUN4H8AobBgL7TxE/02nhRG6ZxTE7Zi51WuxK22uPpqV/Er45WME2SLvpNvOtlELm9YxbSllvZD6X7Un2fowf9lvTHIlvXh5pQiy8/+r8qNCUxDT1VTCKjW8a746LgkLF51NpkAaRynIHm5vtveXVVJ0HzDGlf7HrMPlB7glCzILPAqGg/JtCag28WlEdXurAOZT1vdH2JQXvzr+iZTHA/B6Je2ofj08HX8aVZ3rjQ2Ibm6xiz23rxY3ViIz5kKorCHgnKEHKJrkTDqrWgNNU5ux8JAl1IDtgYuYkDeijpLmjUPMpEHVOEc1ph2ND3h1fmo/s/0dX+acMtfOt2AJnRlszAjZzNvQqJoO0VPmFpvTM3CFu8+OPF25aInf8AkZix+hD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(38070700021)(22082099003)(3023799007)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oFaGOjRdioIj7KLr6v9+9cKiDOvDPmAW73YlJJxGERNRfq7AR4Jzt+RhJCLI?=
 =?us-ascii?Q?S4pnThL+m3CKkJCNg9CMHcP2Hs/2Twahyr9ZrXjhP1y3lxk2DHTJLl9S3cVu?=
 =?us-ascii?Q?vJ2VIAQ0r9ATVKIMbG0PkQZCHHYpDs9guZkqz5HrU+PcBchW0/9xVYH2EaXE?=
 =?us-ascii?Q?xRxyliOJ7LyUUKd7EL0TR9VeHFnNFyb48P0JWtpkhoQoykouHdZrFnTV4AlB?=
 =?us-ascii?Q?vWhdClSQnUfgGl66nWbNHgbMCFExBqoKn7t1sdNKcjlRAssQC5OFjMSTPNuY?=
 =?us-ascii?Q?KXf5NUuSNsF13oKQeHAvtR5hxQ+56M40vArIl/07F2NwhvOrtCVom7hFnsfs?=
 =?us-ascii?Q?/euLLWv0RsoSMdX/RFtzn3DqFxmcX3pmMffHq68PzemnIpfC2rwD4jW4AGcA?=
 =?us-ascii?Q?x8/LjJ1Np25OeEWqQmAMK+C8LOpYHEMtXRFdY6gdFMitDlLRqTKBo2iJx+OR?=
 =?us-ascii?Q?U1pEjS6zK0N80kOHMFE/umdbX3Xc34/k9kCmQbkS7bcXf3kufh7sPmmBnJ2C?=
 =?us-ascii?Q?if4g2bRLHq/StejCFNGKtMlVGGGBQGYp3PxdYFkJQguziLJKkouTlkg9+VAV?=
 =?us-ascii?Q?2eBDbLDZV3HDL8IZFJrDiYRwKOAXH5FOXA9GZaUMEK0dFV3jvPKnRA2iQSFr?=
 =?us-ascii?Q?xOAbXITaOuvr/UmV87ZZiZYn51IjjOvrC/uAQS3mw1W1MdGgufN1eFuoPazO?=
 =?us-ascii?Q?EdfQ5qMsWokiF67/EqpgbTSuAtVNJFb0a+ukjhafYoYSaJT0B3508H60jCII?=
 =?us-ascii?Q?K8wr4nK/XY7qPlkqAmodeJG6e9T1QGMt5Tb4GmcITP05/hiCwUEUtjG67nFm?=
 =?us-ascii?Q?eJJh56lSERmuRP1f+x7Lfr8ZZ6ZNVczms7xbJKU1fwx6KxSZ87n5gb+aM0NC?=
 =?us-ascii?Q?n3MzCSprEH5t22F9Xf0d0uOAgnO3ksIYkcWvoWlhu7PkBKvRwj/NsKsi23jC?=
 =?us-ascii?Q?g9d9MTw04R1YjC6ZN56izuvA0KUY7KMQmy2CHqtoOe+fyMnvF27aENZ4/sBt?=
 =?us-ascii?Q?Vvur87nW1JPuSxoTL+jy7ziesg781xyUsKfkn5Y49FOuIONPuYaJXWni9fmI?=
 =?us-ascii?Q?R1PVe8Sd6MvVFGwLQAKqQwLSYBTNhdQId0YVcK38BQBQhrETuu9Zx7Lo0OSR?=
 =?us-ascii?Q?YAB9eBMZEpgmah3ei4kajgtnKp+a/IfDrtE7RqYX/BJGEE0QyhdRr5XlVW4w?=
 =?us-ascii?Q?Y51jnUMySFtiJ0ORu7s3XH1UDlzBox1Q5otc78nUKrq69mQnCqdfU02aJVw8?=
 =?us-ascii?Q?ksaTCkExoG/1ySuO0/qIJnOF8bP5pkZLOqHgZ/qrNdoISHaXZ3Ph1Kf65PoG?=
 =?us-ascii?Q?mbG4VjSgF5v6KX+1xesLHpN5xbkWjo7aZpR2IRp9/ECyUTLa+N0T3tkiZ9CE?=
 =?us-ascii?Q?YyIZzYv6G4KdkOykSj+vOWdvETZVDEGfW4F5J8m1kl8vu684pjhtpmDP8f6F?=
 =?us-ascii?Q?q3ZRlurqR96y30BWxiBc9kVH/thQppqXKhIz+bbMp+F3QRL5ARzPRphbEyeA?=
 =?us-ascii?Q?VN873swl3OXEIfvHY1QwikSr1k979qHJ/Av3MBZxSaPpSOHkYqtBovzTX6mx?=
 =?us-ascii?Q?g+48Jt5pyRtuInIUNdPquR9RhoxN9f0V8XIXWidVprfLWaxXO440QMfz3mpn?=
 =?us-ascii?Q?O9UQIMBSjcJHz4bdbAPfNNsFC8O+vKixAyyAG3u+geOKUSEeXirxq7tUBO+p?=
 =?us-ascii?Q?J1PNTGUC4743RAfDwVo1lrfl755SRUtKRbqALi1pj6acn7n1zhNL7M+fW7cD?=
 =?us-ascii?Q?eBpEj4bDmg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XueynAX3cYsu9iV5s4SzE6pSut8L5nJ9NKwteH4d9gMPa6f04KBPIsdBVwj+tQvUY96eK6w6PEAAjRSk/IuwRuPTSX7vLTTcKBDZIoDamn4LmWLZ3i0zyUPVcbHr3THQGuhfydL5yi2ODhCTv6FfQ7UHmp1IBG5ndGTEMFJwqgrdkd5yS0n2GK2jGdMs712f1PnTRtHV7ntM9kYQe36AOzNd8DRrWN64csa5N4mFvgYZgYkNXiKBLrmcWWS8EiUL9dMfLeN3W/oM53WhyiFkaqpeiUPUqxs70BukJVmMrb+sbwUFcoLlsCmiW51s4ITAmFsAFRPlGQ3shzr7FDNUTQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3ced503-d7ec-4fe2-237b-08dec6af8d4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2026 05:17:22.4591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: og+Tr10+es8GojwGA68LUudgbD/Kc0oH6jjqchu9miuPfvD849VYyIEuY/x5RxJ6seJ2HHFSUGB4El6WJNM7Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5302
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E5BD665E7A



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 01/20] drm/i915/cmtg: Add intel_cmtg_is_allowed() for =
CMTG
>=20
> CMTG is supported on transcoder A and transcoder B with EDP, so add a
> separate helper intel_cmtg_is_allowed() to check the prerequisites for en=
abling
> CMTG. CMTG will be enabled only in specific use cases such as PSR2, PR-
> ALPM, and LOBF, and will be used in conjunction with the DC3CO feature. D=
C3co
> will be enabled in a separate patch.
>=20
> Note: Use-case-specific checks and transcoder-port compatibility validati=
on will
> be handled part of DC3co feature implementation.
>=20
> v2:
> - Remove separate flag for DC3co from crtc_state. [Uma, Dibin]
>=20
> v3:
> - Do not access power domain members directly. [Jani]
>=20
> v4:
> - Remove check for DC3co state now. if needed add Dc3co allow check later=
 once
> Dc3co patches are merged. [Uma]

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Bspec: 68915
> Reviewed-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c | 14 +++++++++++++-
> drivers/gpu/drm/i915/display/intel_cmtg.h |  4 ++++
>  2 files changed, 17 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index e1fdc6fe9762..a279f3dcd1ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -4,7 +4,6 @@
>   */
>=20
>  #include <linux/string_choices.h>
> -#include <linux/types.h>
>=20
>  #include <drm/drm_device.h>
>  #include <drm/drm_print.h>
> @@ -16,6 +15,7 @@
>  #include "intel_display_device.h"
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
> +#include "intel_display_types.h"
>=20
>  /**
>   * DOC: Common Primary Timing Generator (CMTG) @@ -185,3 +185,15 @@
> void intel_cmtg_sanitize(struct intel_display *display)
>=20
>  	intel_cmtg_disable(display, &cmtg_config);  }
> +
> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +
> +	if ((cpu_transcoder =3D=3D TRANSCODER_A || cpu_transcoder =3D=3D
> TRANSCODER_B) &&
> +	    DISPLAY_VER(display) =3D=3D 35 && intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_EDP))
> +		return true;
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index ba62199adaa2..ed540581738f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -6,8 +6,12 @@
>  #ifndef __INTEL_CMTG_H__
>  #define __INTEL_CMTG_H__
>=20
> +#include <linux/types.h>
> +
>  struct intel_display;
> +struct intel_crtc_state;
>=20
>  void intel_cmtg_sanitize(struct intel_display *display);
> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
>=20
>  #endif /* __INTEL_CMTG_H__ */
> --
> 2.29.0

