Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 19xBG2kAK2oH1AMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:37:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAB667479C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:37:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Cwv3zVi2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AFD110E81F;
	Thu, 11 Jun 2026 18:37:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 138D510E81F;
 Thu, 11 Jun 2026 18:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781203045; x=1812739045;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bdlkdciOVA/Qp70/Wgph25td3ijs8QR8iN7ap6HgxD0=;
 b=Cwv3zVi24D34n4fKo1w2bLa6uewx84PTsvp5ZS25kaHf62JkaubqTKqK
 htdqlRUOWnncBqWFHFiyOjhOiW6hHfAPS4pYpuAeeXbkrZMYt4leBaNcR
 9v8g2m744eKuMfLm+COb+iCbisialkttSsPvcXHdJ6FiEQ3zDjO4XnzUr
 znjkRARRi95UujpyWE0Y9okq1fiN7Y0Xbj4ymwHxIjoHTjHhO2rkzWI5x
 Rrns76fJ/cmsD2YrA8KXggNXubmfStDYcNgzOo/hni7De0aYCaoYSXlQU
 sUKps+XVL+ZE+CnfqXgd/Bzyz7Z572bvnattV1A4jbkrvmnqSrXvJRJ47 g==;
X-CSE-ConnectionGUID: /G/x/rvYSVSf3J975M4WVw==
X-CSE-MsgGUID: mlY5I7PTQiecoezi8Z2TTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="85656448"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="85656448"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:37:25 -0700
X-CSE-ConnectionGUID: H1WxI8FHTL2GbKNDREDdLg==
X-CSE-MsgGUID: BerN+FMkTmWrF6RFxlF8Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="242441866"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:37:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:37:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 11:37:24 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.4) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:37:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SOPAWhuDLcCEDmtlJDgKPFxZjt8LZqPrF8dTcYXCUWGeHD2j2ee5hK8grqL9wxj1fAIZuZACemiR9YtUWTfRKh8eM3sxha25zm055TfXGJ6G6f8oHXUECVSbReAlMUABU/tpSdd0Adf/tMMy/DE/lcJ4HeCduu1RG8VK992fGl5g000ZklBZfM5LSNv22pUXxTLq6B2RzerlTK7qolYiZjjE/0aR/J3ul/pNneecXPPv/DGID3wyrYp5Gk9NKp94+qRkmgTYXMItKnEdPJ3aFqfKCAhtOW0vv7WSvvhEOtSFgrzOSk1gosgbZx+31ukR4okmutI+OnTM/EsSq805Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d/CirIw4YozWpPfwAPIODMLrzx09n77nIWrOW4pkeeY=;
 b=FrdermfNOBmUZcwMezNy/sVMYsJunsG5wNGU0psOFjUeQ/wYEOIW24uq79G6v8Unvt4PkhTRce39fLha4lrsY/sxpGXThuPrKascE/rhEg6YvE+vD/Ru0T3qQZ30isJaqH/EbW+AQuTaZWzim/nD3L1+smMOYIrQp7zecCT5qInJvsyU3y9mNiqfDhZt5b6PfuSvT+tiwg9j75Q1xAUfNy3qyywb20/ka0HtImBnpv8hvGjXV5fkqE7thQotekNqsfRIX5NMfMoe5PGSBOJJxil/iFQrDk7pLoKWb7pE24MXYPTUJFy+DyvbqBY7zhUQxp56puZPl9Pq/46kF/XMhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM6PR11MB4691.namprd11.prod.outlook.com (2603:10b6:5:2a6::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.14; Thu, 11 Jun 2026 18:37:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 18:37:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Dibin
 Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula, 
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 19/20] drm/i915/cmtg: Restore CMTG after DC6 exit
Thread-Topic: [PATCH v8 19/20] drm/i915/cmtg: Restore CMTG after DC6 exit
Thread-Index: AQHc85dm3/dYh0obcUmnpwmj7t3brbY5uRDw
Date: Thu, 11 Jun 2026 18:37:16 +0000
Message-ID: <DM4PR11MB6360FC0F9A81CC77A801B9C4F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-20-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-20-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: dibin.moolakadan.subrahmanian@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM6PR11MB4691:EE_
x-ms-office365-filtering-correlation-id: 740bf93c-a762-49b4-210f-08dec7e87622
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|38070700021|22082099003|18002099003|4143699003|11063799006|6133799003|56012099006;
x-microsoft-antispam-message-info: 9QTGA/O6e4wd27EpHjc+bLp3V7a1SXun6uadVb34QSDFwQrBgZV9adIbPDyItG98tYh5UU2UeS8/IFr7YwT4cK7HDGqrN5Y+3YP2URA3GdMobstJR/ZgmcmtiS2dJaBeaNZGyTNJp1btyhNovAWvJsdfTu67+JapEV+Y7AGs2hHA0oQWUESumojbzgpOcXQodVpV8VgSQJY8niGN++VgwTqXnlrZUwMW3DPMBKxWmyIaE2Wn1N/qrqtsVp2DJhbO5HZ7UkV5JH4kaclSFk8ZuyV6xZb6fyGGBBw/Y4E3oKHauqIKNrdppHgwFUXTslz9/n7Vm4fIh2Z14AJTlwXdZ+euXzdNNhi13H9v7MRoUAfPZa9y6w4qLQrr2ZFGTz0cDFf9wpzr0r6U9faGuwuz4dZgl29jYb0ALwsJqgsrY0t+hmhLzUpkfrrXJNrQz8cuzNoAgaSJ86Q1CZwgKLe9d5sVt7B9m0azQt8YXOVn3/lQtlpg3kQHANerGb8FXU8Rr+TmQ03ExFHzsafh9oHMT5hxLDa4jHimhouiUJ3bWjHPMh09aL+bul9a4kmcAxnGwagt8SErlmpajq9LxGm7m9eTpNC/4yXOxtJGimybLOiHvV44tQgG6mKI+/1s0mjpIpQ9y4RAoGCc0AOrNxCLMQFMevXjDMZxJLXAB+VLHCdqLujDVuxfsLoH1s/uG1oF+I8VtRlb6uegjpoQdU5cLJZFi3rP/dxq1jhQcfbWe/RUDkowvwrHd29oO2uvM0Xk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(38070700021)(22082099003)(18002099003)(4143699003)(11063799006)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Avgi9ReUmp48NHnsH1twzpxZS5Du7uKKK2yPmY09ODhfGStuZxHyhoLBJRGW?=
 =?us-ascii?Q?aDqz6nHZhxSIjTSmO7FrLulDPiKR1LQQCW5yfhzwW+t7HA27defLGvDXPMRG?=
 =?us-ascii?Q?2vzQhh8rI6fOo7vfzqgw1XW4emVToVy4EkyfVst87zzbMMVBqygA1x6+cCpZ?=
 =?us-ascii?Q?HR4sGQHvvfZFTc/5mrsoDyrFAX+CUxb+lPaXmmymtI8D+Gzn7gkOJ8H9QrvP?=
 =?us-ascii?Q?Ie2z0brqpVoJrLOLEUiiamYl7QzK7naScItxPUAToFHtAHGng+Nr8k21sMNZ?=
 =?us-ascii?Q?MfzEOs5unIBWSlLjwTXb0Kh+l9UlGTgTRuyTs9SD1Q9+NfM9kmChFYiZP4pO?=
 =?us-ascii?Q?PyNcZYVwwwMqRZGk8EVQgTKJmZW3l7iGUmCqlF7mjvbue81zdbISITb9IQ+v?=
 =?us-ascii?Q?SMcZ0Sn0iGdBcrd62QIK+kmC4prd7xUhdFuOT2ZQfDtEd1dCeA7gCX9IPrxx?=
 =?us-ascii?Q?E2QyKRsu9C+a8iyylgRcw/2i6k85rusV0Vm0J72DJ1p4gBpjVFypNfjGq+tQ?=
 =?us-ascii?Q?sc+PxTBz8MWZXIHA33Mkk8Qu8VZABl+MJdewKXwULLuhhriBF59+G8WWrp3U?=
 =?us-ascii?Q?+kOn0guK7rGfsbXXAeGUwr7j6TGe7OH678gOsl+PsueCnCyhgzjiQCmpx6PO?=
 =?us-ascii?Q?edyrTy7XiD6scc7Fax84it1WftuzoRP/oB23XeHcqikE1JHrrgNaes0K8kH/?=
 =?us-ascii?Q?v3fSfjCE2AbFPIRlizzFGoFHIJmgNiKLet9rtkv6kBRLk3QVoJ8JddWrqQxq?=
 =?us-ascii?Q?ctWDIMlA7VaUjQDzAPtn57qnIQdOImaBEkDwdtdz0d3YgaE2X6FBdyWJ5/P3?=
 =?us-ascii?Q?5U8R0FBRBXGX3D3gU3RlRhDPBs8VAhuOnBN8UybhbCHMy157B0N4bWPOjbNX?=
 =?us-ascii?Q?n3dBtmC0/lYXfxMqpLW8QFIwzeXjk5Qr/q725EOHnym2oMH7naOeL4XXIPZM?=
 =?us-ascii?Q?K00ffhWsx3EURestuaucZMGkfCQBJlGRELJ/LgfjrSskx1FeFqesfF/A30VR?=
 =?us-ascii?Q?2gCl0/Ht8kkMrP4PtE6NWo8oIOVr3PEcBbKKY/5a46Y1y0EShSfGZmNRc7O4?=
 =?us-ascii?Q?j2B/gtPoWKABFpvufhnYTIeT8Jyg3ZDzvkwffVh4P0e+LVyJ7iH0/FnPaql4?=
 =?us-ascii?Q?CiQHDBBVIYaGr3jcX/MkG4p+0ks0zw3guoYdio5FAt84ubpv3Ct/Hdnha3WN?=
 =?us-ascii?Q?unRDwfW9nM4OY/CL5muDKdl9j61G+TJfFi/oplr0O9BX3aXwlebD6ucmTQWW?=
 =?us-ascii?Q?xJ3TAksB+TzCi0QZTcvHJPQQ5RQxjxrd9DfZyaxHiHo1XyyH/5xqf1c7R0q3?=
 =?us-ascii?Q?sLDC2vXpdmczdwH1goEoJ7/31R88gctcZSILSnXhU2fFFmjPO8zRhK10T2VC?=
 =?us-ascii?Q?/jVPYYCRBxdiewbAFuzeDB94vOOzc4cNPaE+EMMHow0hDWtZSUR0r3WRi54z?=
 =?us-ascii?Q?tnd0APEue0Qc+kpdKv7lKdwzGC7PwAVarmmkB0o53A8FFtJkRccoblz13Y0+?=
 =?us-ascii?Q?wIaLZAUH2KhEKEdAwArYu7TwpGaZ2CdF7tDlD+2Aa/gD0lYO984qmA2IaOnv?=
 =?us-ascii?Q?1QIg2wS7oraBU8HRQ0u7u5yMEPK4UBfx8UfuK9jiIR9D4NzxRVoiI2k7LxS9?=
 =?us-ascii?Q?RK6tiTh4atPlwihysrUCtAM60nAkpJPoFnk9LZckyozFBkP33dsKtc2Wlcq5?=
 =?us-ascii?Q?1AQTL2eKx8Klu0Ga+KIR/6/CK4+S44KYrKoVu6/Pf1Q/IeusgIyVw0P7A2UO?=
 =?us-ascii?Q?JR2Ky7RrHg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qVIVqKe7qdin+agRfnbUbjFfeDlmzl4aCtqGnL+rzY+lUzSjv4u9qIjSQE5uf5qUAc/1twe1xuCvxGwAM7+h1U6WRqrbvUBzRjxYneoBZdW5nr0RPOfx/mqywXefz9eUkaDL+zgkSaAigB/Fr67La4fiTY2cWiOlDQC/ftrBXy3ap/IDaWvy3p3DI96R5A8l3f11oKuY2JgcFBLVUAHmE0vmVu9NN31ZAPEZw2xILUDyypEyZh3mPCqwcbhiN7oqeuRTkYili3AYnss8B9MCtT0MTCByaJRQCShs8bU/UHoIGfsYBvrshSOLXLne/7zLcQL7dqhglEHnvkitUQlVYg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 740bf93c-a762-49b4-210f-08dec7e87622
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 18:37:16.0911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wCUeLwkP3Qcm7WNvxCbtHgkBd7oUQyPDEabAC3ce/02HILbjbF+5ZnGoP4SchctPMWkiNfhBDO3nT/S239f1Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4691
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime];
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
X-Rspamd-Queue-Id: BDAB667479C



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 19/20] drm/i915/cmtg: Restore CMTG after DC6 exit
>=20
> Restore CMTG registers after DC6 exit, as they lose their values in the l=
ow-power
> state.
>=20
> v2: Introduce intel_cmtg_restore() instead of calling multiple cmtg funct=
ions.
> [Uma]
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c       |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h       |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c    | 10 +++++++---
>  .../gpu/drm/i915/display/intel_display_power.c  | 17 +++++++++++++++++
> .../gpu/drm/i915/display/intel_display_power.h  |  2 ++
>  5 files changed, 36 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index b7f4be33ce2e..8be6f7f28e35 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -434,3 +434,12 @@ void intel_cmtg_program(const struct intel_crtc_stat=
e
> *crtc_state)
>  	intel_cmtg_set_hwgb(crtc_state);
>  	intel_cmtg_enable_ddi(crtc_state);
>  }
> +
> +void intel_cmtg_restore(const struct intel_crtc_state *crtc_state) {
> +	intel_cmtg_set_clk_select(crtc_state);
> +	intel_cmtg_set_timings(crtc_state, false);
> +	intel_cmtg_set_vrr_timings(crtc_state);
> +	intel_cmtg_set_vrr_ctl(crtc_state);
> +	intel_cmtg_set_m_n(crtc_state);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 51fc3f5a89f4..37f90123c397 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -22,5 +22,6 @@ bool intel_cmtg_is_allowed(const struct intel_crtc_stat=
e
> *crtc_state);  void intel_cmtg_enable_interrupt(const struct intel_crtc_s=
tate
> *crtc_state);  void intel_cmtg_disable_interrupt(const struct intel_crtc_=
state
> *crtc_state);  void intel_cmtg_program(const struct intel_crtc_state *crt=
c_state);
> +void intel_cmtg_restore(const struct intel_crtc_state *crtc_state);
>=20
>  #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e751a4c37842..35fbf1ae210e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7560,12 +7560,16 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
>  		bool modeset =3D intel_crtc_needs_modeset(new_crtc_state);
> +		bool dc3co_to_dc6 =3D
> +intel_display_power_get_and_reset_dc3co_to_dc6(display);
>=20
>  		/*
> -		 * TODO: CMTG needs to be restored on DC6 exit and DC3co
> entry condition
> -		 * need to be checked before calling CMTG functions.
> +		 * TODO: DC3co entry condition need to be checked before calling
> CMTG functions.
>  		 */

Would request @Dibin Moolakadan Subrahmanian to please check this as well.

> -		if (modeset && new_crtc_state->hw.active && !crtc-
> >cmtg.enabled) {
> +		if ((modeset || dc3co_to_dc6) &&
> +		    new_crtc_state->hw.active && !crtc->cmtg.enabled) {
> +			if (dc3co_to_dc6)
> +				intel_cmtg_restore(new_crtc_state);
> +
>  			intel_cmtg_program(new_crtc_state);
>  			intel_cmtg_enable_interrupt(new_crtc_state);
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 2e51dfcd5dce..e75002819bf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -285,6 +285,19 @@ sanitize_target_dc_state(struct intel_display *displ=
ay,
>  	return target_dc_state;
>  }
>=20
> +bool intel_display_power_get_and_reset_dc3co_to_dc6(struct
> +intel_display *display) {
> +	struct i915_power_domains *power_domains =3D &display->power.domains;
> +	bool ret;
> +
> +	mutex_lock(&power_domains->lock);
> +	ret =3D power_domains->dc3co_to_dc6;
> +	power_domains->dc3co_to_dc6 =3D false;
> +	mutex_unlock(&power_domains->lock);
> +

Since this is called in loop for all crtc's, only the first crtc will get t=
his as true.
For all else, this will be false. Can you check this once.

> +	return ret;
> +}
> +
>  /**
>   * intel_display_power_set_target_dc_state - Set target dc state.
>   * @display: display device
> @@ -320,6 +333,10 @@ void intel_display_power_set_target_dc_state(struct
> intel_display *display,
>  	if (!dc_off_enabled)
>  		intel_power_well_enable(display, power_well);
>=20
> +	if (power_domains->target_dc_state =3D=3D DC_STATE_EN_DC3CO &&
> +	    state =3D=3D DC_STATE_EN_UPTO_DC6)
> +		power_domains->dc3co_to_dc6 =3D true;

I think this looks a bit off, we are moving from DC6 to DC3Co while the var=
iable being
made true is reverse. Can you re-check the logic again.

> +
>  	power_domains->target_dc_state =3D state;
>=20
>  	if (!dc_off_enabled)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 56dc89eed3f8..b9c9b68072af 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -138,6 +138,7 @@ struct i915_power_domains {
>  	 */
>  	bool initializing;
>  	bool display_core_suspended;
> +	bool dc3co_to_dc6;
>  	int power_well_count;
>=20
>  	u32 dc_state;
> @@ -179,6 +180,7 @@ void intel_display_power_sanitize_state(struct
> intel_display *display);
>=20
>  void intel_display_power_suspend_late(struct intel_display *display, boo=
l s2idle);
> void intel_display_power_resume_early(struct intel_display *display);
> +bool intel_display_power_get_and_reset_dc3co_to_dc6(struct
> +intel_display *display);
>  void intel_display_power_set_target_dc_state(struct intel_display *displ=
ay,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display *displ=
ay);
> --
> 2.29.0

