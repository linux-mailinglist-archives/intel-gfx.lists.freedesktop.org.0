Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UyAXOIQsMWrfdAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:59:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D2F68E903
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:59:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="f/O1at73";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34C110E9FD;
	Tue, 16 Jun 2026 10:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF1189D8E;
 Tue, 16 Jun 2026 10:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781607554; x=1813143554;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rSdb0WosHtij6OOdkKVXENbYABofL1tHJm/t4Mt3iT4=;
 b=f/O1at73L8ExP1gdiIUKQoh/W6lPZxU2hpWKRvZa7ewhvloo9MkJXmBj
 Z8mASq5Q0iO1TTU6PQGHH1/LzeAc2/Eq27/x2f+CGLtrPcAgMWIVDuKLq
 6A9GL6hIfwmYR3uBrfyd3HK56l9qSyJRvaIN1Yu0wQ/qfILRB7xJgrUfy
 0f69ZppWoKwLM9XlAkj9bceRP79bYezVH2C7KX5yZovelPhsK8DC6FB2B
 AyeftFFIWbpDkuvGX/b8zM2f46s9GenWf3RQ5eaGJeKKqJ41SeIbOLGTn
 gJEUGgPe3DzpF3SvKWm1uMQwfgukNYv/5VQYork+Uz0DE5MZML7wupKuR Q==;
X-CSE-ConnectionGUID: ZQUf87d+Ry6CVMo4E5rQWw==
X-CSE-MsgGUID: vp9sK53XRi+BfG7AAjKOXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="84933512"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="84933512"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:59:13 -0700
X-CSE-ConnectionGUID: ILcmmH7qSs+L5xwOIZxOTg==
X-CSE-MsgGUID: OfXK6f/kQ3Kiy4ieBJgXoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="247804607"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:59:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 03:59:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 03:59:13 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.64)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 03:59:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uOW4qWQwAdfjlfQ9Wrtm9GcHPZA0+/bh0JTaFw8JDIzRCKe6PyKOBT48DYuDBoxsyrtsRCcrICermtVZek628s4iHJ8sUfLxj6YAWPPH1MSPMKFasqZFaay//nIfIPtXn6OnOOPgJLuS/SuuA0tUpmgIfXWLCe5ZsRkilt5Ax7Gw82ea3xt4CFSklIPATwxzWQ6A6nqLR5wu5Ngwd11Vvkd+05O6zKTF0Cu2SVuJr4Jr5LXdzKLpZrdCb5H2VV0XgsIRD8MODLIDlSW1eeku5v0eI4JRkMtrlwSRE1/Rn0it0AwaDm7LaL85gtV7/4uaxHvkOum6FkbqRwHfZRYZiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lDacjSs4h7gudgXgrlV5TQbTFgqqgEnhyJGIktcV6qE=;
 b=XfSRU8YvxJoXcPmniGLhChDnwyRFFeFUOyWDgNg5B2Appg49ef4hkqN1Y7XJMEPf0cuOcnOIf282CU5EHJ01lSX9vFHhIoqQhqLdjaVbx7LmsouVk1Dquffzzdf3UPCeU28z+smISZmqj8FrrNw06SUrDRnVHce80Xtc0VcVIERoFTf24mf/9aHctvu4hAP7lr6gud6tBUlmjU8Thzoe9T6QODxTxFDxKgqlwLJTG8YoS16ePhrmJK7yv2i/6PL3bMnDCpovbS6imC8Ie58Qz8MCS39jvngAh+bxu6HKcIbwS2V+9zpPukG+Wk6oCglyPFqAL218PmB+qbvhOCW0eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB5134.namprd11.prod.outlook.com (2603:10b6:a03:2de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 10:59:10 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 10:59:10 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v9 22/22] drm/i915/cmtg: Add CMTG interrupt handling
Thread-Topic: [PATCH v9 22/22] drm/i915/cmtg: Add CMTG interrupt handling
Thread-Index: AQHc/Qa6+NoUfmfZHEuSPlTmyFAQIbZBBAcg
Date: Tue, 16 Jun 2026 10:59:10 +0000
Message-ID: <DM4PR11MB6360EB0909492A470DBBA276F4E52@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
 <20260615200339.885190-23-animesh.manna@intel.com>
In-Reply-To: <20260615200339.885190-23-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB5134:EE_
x-ms-office365-filtering-correlation-id: 8ce47851-6c9d-4062-f366-08decb964bae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|18002099003|22082099003|38070700021|56012099006|11063799006|6133799003|4143699003;
x-microsoft-antispam-message-info: fpkqi1LzsajlcRTLCGHSqGDIEvEpk5nfmyn3hTLHWSfeaO2CcoO8iNDSoMpIXN6Z5po9EZK+6XfqYx5Qxc4OYuBodnGTmBDbIHH9bm3tFUGbBug4kn1w1c6wQ1MqIg5PK5UjkHlmTRFHHiPCoZSaHzFbtxTUFpifT++8Bb2MSkQeLM4TcMV1tX4AF2J+5PKZBpmbZu0Habunw1oeut3wN9nkdnj8IH8+3Zi7yaQv68a+tSBdX9mmLZRT8lv4ilAma3CmIDj7R5hdZdDDriP8uH2w1CctVQWlAwcDPCKsg+y/O5fqJuRekTB2cDzCXf3EgeqwhP2KK9EKeArOLTqruPR96145x9HxnHBO9r3plNgziwkE8kTuSP92sswIf5e9SL0cuRmuuqRzKseLC5P3xvUMnXYoxQIybFmwy3Dhx7HoYNrVNQ8qhHaRtMtijmRalcAFCcWq9kvw9A2TBHvdl/1jRPnExV6i12sXLdGBpsBGeEdYmVm3ojPI2PPIkhmPL37bDYRcsh7r5sXidNvh8C2xcdhUly1YodGTwnkKk/oggHXIzsjcKIis/Gy9Wc77CVkZKQUhl+6fWDkKK8bjHQ+lK4zMqc+rNUETLfvOQXttUaOqKHqRlb6iNgNhY/hQAr3c3+cdkjULctdbCki0cEL+Nt6nnWROjgs1QBHd2SoXCH6+PezKGSb7STXzjeT2AY+phV+HqIMqwluwl/jU2nUxBmB+Vext4SVf3O2X1bwSc7jM7pOoLdI+AtkFEc0M
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(18002099003)(22082099003)(38070700021)(56012099006)(11063799006)(6133799003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GrcJ0J6iEYW7gjOv5sxb/i/JHhlivFW5KG2zhAA8TzWZVYv4wv6eRUjG9WiV?=
 =?us-ascii?Q?XVchA8xzwGI7qQ8XK87sTJnHlQSu16ExQWn4Fp91J8OlsPl9Q0IKa+nf1Rpx?=
 =?us-ascii?Q?cC6xmhkGZXgg0buEgjylnXz4iaNl13qFvngeuYQNsmvHTmq2Li3Bbsx2X/jx?=
 =?us-ascii?Q?9TCPklmdZZE7y33uWA8Aln7uT5MJjLUfuAMncWUOSX3S3TKdasE0WzckwUHH?=
 =?us-ascii?Q?XDebIe8H5QxRK2EBWShJQCh2aGMhyVdhvI70UtEP7JLfW1vtYggIHR9tZaTv?=
 =?us-ascii?Q?YLz9E78fPA6yArvD6wde8F+uUQeACBU+1dPnBlms7hsYC/h/yMEFUSk1f69j?=
 =?us-ascii?Q?EqwciVYjS8/Z8uC1OMrVbPh6JGJZjb09ckkrv8Q+28D+AlD9HbukgHhypHeu?=
 =?us-ascii?Q?E93ypU6lZjnlASTIW/h95wK0uiNX0O+bJvB8HohykFawNhZop4wl5YX6MfSU?=
 =?us-ascii?Q?4PYMGsWtEZdFfiMZyTyA75JCR2q3lSvigfKB1lKPEI8EfWuoloqVQSbDL1LK?=
 =?us-ascii?Q?twUcwBlwZuo4v6VyoMUBG4z4oQ0wjfq8bjb1dm3xZzwYU1SOQAisIXaKElks?=
 =?us-ascii?Q?NtNT/sM8eZhQH/LziMuUTy11nP+9fPyHh1jmmilaHYSJAEFl2Olrx2f7o1yt?=
 =?us-ascii?Q?VPbMqEJKdOil4VYPVu3WozE3Prb4VtgAhJxRTGa45J1LTWOS9StBVu9bg+mj?=
 =?us-ascii?Q?CJhaiaIdY+sFzBMbP7/TnFlbEhh/wa5E5kPosdAD4kZ3U12n4UKPl+7eW0g8?=
 =?us-ascii?Q?sKieyoZJ0hOj5h1zvEXQhC1hCBCqDvt3uDPT2p/qqbK0aOn6WPEGs4KxQv8r?=
 =?us-ascii?Q?1N9QJkYGuycssCu6+y0s0jrjJZB11uWwEJZB5fupTOnCtlnbW4K3LlQ2r1Xv?=
 =?us-ascii?Q?y7xo57bZ/bwosdDR/jqTFOrlo/J3PkwDKA0JEU/ZBu7VjATQbAeyTCfBDrvJ?=
 =?us-ascii?Q?O1IvVVKCb4hOcK6VN3z/+aFy1ByGJ6ee7eklAUzNFtGwKTYp+j/2zF94Iqpg?=
 =?us-ascii?Q?OvIx1tXKYzI2f7V4OE1g4RE5caXrrB1nwLC9UvSXXunlvP41EfujfXK1jfZU?=
 =?us-ascii?Q?aZ91dMrSmAjcURlVtuWYRzLS3x5X5KshFvnaV2my83mZW/dfKIMGjxXyIAR8?=
 =?us-ascii?Q?OD8+3nU0TzpcKriNjVI15nCdGzxjFUeT77B1Pc3LPkk56nj0nYcMXoGqSvqe?=
 =?us-ascii?Q?kT1hKNHCFfDo9j8hJSt7gMFcjmzOk6Qjtw+Odr8gZyQ+jXYrIyIq4cbG2zTw?=
 =?us-ascii?Q?XT4PDGtOqGoPZf8SoVdHC1GBptHiKKFIVrSPaHL0806z5hlcfmfEmwj/JHcz?=
 =?us-ascii?Q?ouazUbFPmnQ2eYPe+wbzXHQ5H9kW1w4Eo3PzUo0R0uDCH0/vgjW2SVM2GfOV?=
 =?us-ascii?Q?HQ3GG4U2nagAmizKorXNOCsgIt6W2hGfGjC6liCmizB24vSyF6rMRM+LTGqi?=
 =?us-ascii?Q?okFb+cD8rnrvLXO3ZHocebYmffNEONRbZKWnwBk0vni8l2NCia1hazU2iexa?=
 =?us-ascii?Q?OIuE9m9om5oIuiH+XXoy1kPGgoipyGAdy13GrfU/AAN+ACIQ0Evf/fNL0PnA?=
 =?us-ascii?Q?Mr53afFPnBucQ95TtOdx4J2n4i7C/ApGdAoPusxEHMYbywjha7YhVaGzKyLl?=
 =?us-ascii?Q?y0TjSpjSwXEAyvkKuHATOhCG9w2iRCyZ83QkvIl6s5QA7OLKo4WqiozInkXo?=
 =?us-ascii?Q?bue+LkQDsimULohQuZgE1xybWMQJMuxqMz6ewfwBraicmMCul0DU1D5I1CrY?=
 =?us-ascii?Q?QiMvkC5n3Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: suUdSydrVbyVP5CEG307FjZrMn5uGvrtw8DTnGoGqgzFJ2jJKbu93/sov8Wjd4jSrGtC3Y/F93o5it4s5SYLKIy5iTZqfFcUjgVGSldWJ9SvoybRh3/M4E7lLkvj2wpCPjSgiKY8lwReA72KBnDxWlchAFH1DV+DCf+R9+ttit2nr15vEJCgH4csj0mXNtF+AnupaZ/4OmUB4izZYLnaRDkr7mfXLwQtPqLqCxv/3N7TUXNJTPbnRLX19RVMsc+Z6kGE0sqfr+V5MDzShtuETlGFsaKZVaBM0fdPFnnw6tyKHlYH3cdtBBZNcEJ9UIhVqUYNpkgTkOR7qp+OUdhpsg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ce47851-6c9d-4062-f366-08decb964bae
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 10:59:10.8235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BAP8N/03VtJx4eJ90jbjE2WiFM1ChaOup3YqO3NYew/BeWwDkMxWhuOQxwdQ3zaFXWUGonRSuPiNnluoZFNErQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
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
X-Rspamd-Queue-Id: 45D2F68E903



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Tuesday, June 16, 2026 1:34 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v9 22/22] drm/i915/cmtg: Add CMTG interrupt handling
>=20
> Add support for the CMTG vblank interrupt, which is delivered through the=
 DE port
> interrupt block. Enable/disable the interrupt via the DE port IMR around =
CMTG
> enable/disable, and dispatch the CMTG_VBLANK_{A,B} bits to the correspond=
ing
> pipe vblank handler in the gen8 DE IRQ handler.
>=20
> Wired up for DISPLAY_VER 35. The CMTG interrupt is not enabled via IER to=
day
> because CMTG is brought up together with the eDP transcoder; this can be
> revisited later.
>=20
> v2:
> - Use consistent DC3co check as used in earlier patches. [Uma]
> - Use else-if instead of separate if block. [Uma]
> - Merge mask and unmask function as it is similar. [Uma]
> - Modify DISPLAY_VER() check. [Uma]
>=20
> v3:
> - Enable only vblank interrupt. [Dibin]
>=20
> v4:
> - Keep irq related code to intel_display_irq.c. [Jani, Uma]

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 24 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_display_irq.c  | 19 +++++++++++++++
> .../gpu/drm/i915/display/intel_display_irq.h  |  2 ++
> .../gpu/drm/i915/display/intel_display_regs.h |  2 ++
>  4 files changed, 46 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index ae59d7e755f3..6da28c185080 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -14,6 +14,7 @@
>  #include "intel_de.h"
>  #include "intel_display.h"
>  #include "intel_display_device.h"
> +#include "intel_display_irq.h"
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> @@ -177,7 +178,7 @@ void intel_cmtg_disable(const struct intel_crtc_state
> *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	enum transcoder cmtg_transcoder =3D to_cmtg_transcoder(crtc_state-
> >cpu_transcoder);
> -	u32 clk_sel_clr =3D 0;
> +	u32 clk_sel_clr =3D 0, interrupt_mask =3D 0;
>=20
>  	if (!crtc->cmtg.enabled)
>  		return;
> @@ -210,6 +211,13 @@ void intel_cmtg_disable(const struct intel_crtc_stat=
e
> *crtc_state)
>  	intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, 0);
>=20
>  	drm_dbg_kms(display->drm, "CMTG: %s disabled\n",
> transcoder_name(cpu_transcoder));
> +
> +	if (cpu_transcoder =3D=3D TRANSCODER_A)
> +		interrupt_mask =3D CMTG_VBLANK_A;
> +	else if (cpu_transcoder =3D=3D TRANSCODER_B)
> +		interrupt_mask =3D CMTG_VBLANK_B;
> +
> +	intel_display_irq_port_interrupt_mask(display, interrupt_mask, true);
>  }
>=20
>  /*
> @@ -355,11 +363,25 @@ static void intel_cmtg_enable_ddi(const struct
> intel_crtc_state *crtc_state)
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 interrupt_mask =3D 0;
>=20
>  	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder), 0, CMTG_SECONDARY_MODE);
>  	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0,
> CMTG_HW_GB_ENABLE);
>  	crtc->cmtg.enabled =3D true;
>  	drm_dbg_kms(display->drm, "CMTG: %s enabled\n",
> transcoder_name(cpu_transcoder));
> +
> +	/*
> +	 * TODO: Currently cmtg is enabled along with eDP transcoder so cmtg
> +	 * interrupt is not enabled through IER, need to do some fine
> +	 * tuning in future.
> +	 */
> +
> +	if (cpu_transcoder =3D=3D TRANSCODER_A)
> +		interrupt_mask =3D CMTG_VBLANK_A;
> +	else if (cpu_transcoder =3D=3D TRANSCODER_B)
> +		interrupt_mask =3D CMTG_VBLANK_B;
> +
> +	intel_display_irq_port_interrupt_mask(display, interrupt_mask, false);
>  }
>=20
>  /* Bspec: 75253 */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 4a821b0674fd..bcb0ee22fb56 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1469,6 +1469,18 @@ static void gen8_de_irq_handler(struct intel_displ=
ay
> *display, u32 master_ctl)
>  				found =3D true;
>  			}
>=20
> +			if (DISPLAY_VER(display) =3D=3D 35) {
> +				if (iir & CMTG_VBLANK_A) {
> +					intel_handle_vblank(display, PIPE_A);
> +					found =3D true;
> +				}
> +
> +				if (iir & CMTG_VBLANK_B) {
> +					intel_handle_vblank(display, PIPE_B);
> +					found =3D true;
> +				}
> +			}
> +
>  			if (DISPLAY_VER(display) >=3D 11) {
>  				u32 te_trigger =3D iir & (DSI0_TE | DSI1_TE);
>=20
> @@ -2666,3 +2678,10 @@ void intel_display_irq_snapshot_print(const struct
> intel_display_irq_snapshot *s
>  	drm_printf(p, "DERRMR: 0x%08x\n", snapshot->derrmr);
>  	drm_printf(p, "ERR_INT: 0x%08x\n", snapshot->err_int);  }
> +
> +void intel_display_irq_port_interrupt_mask(struct intel_display
> +*display, u32 bits, bool mask) {
> +	spin_lock_irq(&display->irq.lock);
> +	bdw_update_port_irq(display, bits, mask ? 0 : bits);
> +	spin_unlock_irq(&display->irq.lock);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h
> b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index a1227cee885a..84446bf53401 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -82,4 +82,6 @@ void i915gm_irq_cstate_wa(struct intel_display *display=
,
> bool enable);  struct intel_display_irq_snapshot
> *intel_display_irq_snapshot_capture(struct intel_display *display);  void
> intel_display_irq_snapshot_print(const struct intel_display_irq_snapshot
> *snapshot, struct drm_printer *p);
>=20
> +void intel_display_irq_port_interrupt_mask(struct intel_display
> +*display, u32 bits, bool mask);
> +
>  #endif /* __INTEL_DISPLAY_IRQ_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 4321f8b529da..fe851fe39222 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1458,6 +1458,8 @@
>  #define  GEN9_AUX_CHANNEL_B		(1 << 25)
>  #define  DSI1_TE			(1 << 24)
>  #define  DSI0_TE			(1 << 23)
> +#define  CMTG_VBLANK_B			(1 << 17)
> +#define  CMTG_VBLANK_A			(1 << 14)
>  #define  GEN8_DE_PORT_HOTPLUG(hpd_pin)	REG_BIT(3 +
> _HPD_PIN_DDI(hpd_pin))
>  #define  BXT_DE_PORT_HOTPLUG_MASK
> 	(GEN8_DE_PORT_HOTPLUG(HPD_PORT_A) | \
>=20
> GEN8_DE_PORT_HOTPLUG(HPD_PORT_B) | \
> --
> 2.29.0

