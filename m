Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aN+lMEpx1GlVuAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 04:51:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0A03A93FF
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 04:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AEFE10E319;
	Tue,  7 Apr 2026 02:51:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gpe1ToV4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1611010E318;
 Tue,  7 Apr 2026 02:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775530311; x=1807066311;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y1ikhzocnyXqG8Dwwpxhw4MhjZywiILES82gWeInMWM=;
 b=Gpe1ToV4OLDblklPMRQC1tRYsHwy6BEwanUzljKq7MiBnF+w81cdxJlX
 CyyyuO25gQTSlTVSftae08jdPqMjnL86/5OF+nxVDGYqKk4PKILAfwqN3
 obIjGC/1k0y+pz7sHJqC9a5PnnacySzw/WFGHfa3wJpxLONB+SosShAng
 xVs8YQn4IOIru8QACiIOh4AL5YBi/ZEPeNkbE9Z45oI4hS/oIf+E8GBBW
 yZvB82CTyLPN3Li7fHgsNnRB9e+sgzTKuozXCzmuDzK0tf9QcPf0Qqc1F
 Jm9IDIKYg2/MpGNICUA012j39DNQPxl2m7PgVJoxOLjVDgH1uHjGl0k07 Q==;
X-CSE-ConnectionGUID: 2DWQTViPSvS/FO5XPAgLtQ==
X-CSE-MsgGUID: tUBn/f19QZGiIaxCyQ9Wvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="94065754"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="94065754"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 19:51:50 -0700
X-CSE-ConnectionGUID: AFbqQs6aT3msOLb4fvdE5A==
X-CSE-MsgGUID: Ue31mK0cSZut2zkO16XYeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="227982788"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 19:51:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 19:51:50 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 19:51:50 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.32)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 19:51:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YRdjsMncwUatY6QVjP6W2w4GdP0NcEaka6IwvaGS48b2srRJGBqZkqCXeIBKqAJngLJmu7pu4BIXCPjHW6JTaFFydVmZ2MuTwEhwKeGC1lEk9VZOFEvnroH2YicsUQ9zKhCY5Uzz7mJZ2/tYgnDVaYnlXgkM/AhCm9MDBAeLtw6rGjrxt9MRsNLn1z7qjg8wonteU+6F11sJw8D2pN3UXplIRcrvkpszPL6mka/HcaxEjNbJaMFkYR7fmQIOjhurPNXf+Uy2WgYC8qThUYgXt/36isJDRA3OBhJW8agMfPx6iSfoOPcoC6/G7Sgq+7RGIBsHhOQwlJjef31ajxjEtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q+Miggup/djzonEi0Z34vxsW05oay7KyauRtaUk+hP0=;
 b=fuvk4ad2KAGmQcu8gQINB1enohZJhGaGDTw4q7+yps2X8Rds18nG/wlrZr7zNoZaZnZVjqMiyihgJl8yjsqUoYixteEYguAnd5M6BO7FB+Di70v/cM8XzH0fskXZR0O/WPHw0FlwqklSaxxoxhqVP6g1jzTuJQC58gP1INRClu5U1zkMDS7yRJ6aTUX77amX+la7sE0rLNNqbYn6DA1FIlxJVT0i3sUigHQOI+xOaTPvFCO0GMHMP/4MptPPOCQldO7IUV67PoFXpTjG774fKwQEgKkBqduydkPR4uNHJWdgSGLYu0mWdofQzGitEYgPxLyeWsSQMcAJ4gSYeqRReA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA3PR11MB9110.namprd11.prod.outlook.com
 (2603:10b6:208:576::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 7 Apr
 2026 02:51:42 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.020; Tue, 7 Apr 2026
 02:51:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v2 1/8] drm/i915: move SKL clock gating init to display
Thread-Topic: [PATCH v2 1/8] drm/i915: move SKL clock gating init to display
Thread-Index: AQHcwQhCbf5z1ia2h0ivHnaYuayQMbXS8E4w
Date: Tue, 7 Apr 2026 02:51:41 +0000
Message-ID: <DM3PPF208195D8D6D18797DF43D23B2AB3DE35AA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260331121608.1016333-1-luciano.coelho@intel.com>
 <20260331121608.1016333-2-luciano.coelho@intel.com>
In-Reply-To: <20260331121608.1016333-2-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA3PR11MB9110:EE_
x-ms-office365-filtering-correlation-id: 60c1104b-746b-486a-8ba2-08de945098f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: xXbenlDaeIDBYKIdYKQFlByIuU9kq+VcLIkjPfBRH8muOf/20Z9csRPXztp0eET81Q+l2xKdXjnkdhdtKIzx3HqlNvB0XgZOAyKEV6NhW39AmfpqHztsX/F5G/NBtxe/GVHgvUiTGL0nrIE+SGEnLn3F8erJYarqQ6cQAn5NfgcV5i9RRV798apW3KP05O1xZxTpeZmsBVGvovatcur8y0gPOCv96LIH3wJcSyVrs9dVQjCEoshH/kGhq4DejuYlyHDj90dfWfN1beyHXd2RX5P+oxU6vCcebl2STLZzAB1sLDURubZBzE0nTusbMf0/ua+IK9K+3RuuAu6ZFF2ZmLkq6PfhP5mMqxr4KpAkHgRGvajQADhZp7Wz6R1gHOsm3FiDSCTQG7CVM/sAeUiCbEU7OY2IiI/0rh2eqLu50sg9TZgUbPizytjbFGoII/CXldrgEYiSBz+OxI8AAaHPKVZAvieTjvUEl1GNPJftkMeyAHVzAYp9hddNgs7yCNanY+l6ttkVSvF3LKn80q5VeYFMvJySbKQUa9KrjmPBCsUF/v14Uvm+HcnPKQFIyQcDNzJlT8XQuAvJYdLONc855RwQNoo7N+gQYKODyOdaI79E9zW2KGJghKp9QStWLo/WRWv6IrrOoimSms4WwvGoNJwKejuq+1gpiASyQn77+q2OhW064hZ5YUaY/+dvChEohAJDLUOkTQmhPuQZRrfF9+GyKUOudRck/d8O8n5tvBioh00WO1LzhRx0DbXQOhW7g7/hhzHdcHt1FYhrb7XZdP2ufFgx3SPyUy5AT9JVPgA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2/UKuUQnYM8mnBdyryPCzasQs0jtkBRcP6JOWepxkxdLM2zhMgyI+xp95Vew?=
 =?us-ascii?Q?zpn9CDdl4RI0kvOiryb4+ypCbjfNnzHKiM4kgmnapdTSKNgpO2Fxv78Xu1z2?=
 =?us-ascii?Q?sMMsc3vv2DsX8LMpN1TvYk6LhXKMaA3YQaK2bpYWLU5qqi7j+2aU9MEfLpXN?=
 =?us-ascii?Q?8URsCJqGZS5G39foc7Wc4SDAXix9vBVO1kSoaZWXGEZ0y4Jqhw6G5yvPO0i5?=
 =?us-ascii?Q?72fnaO/g1IDsgb/v1rkgamDgoCiQIlYCPmPs93z4L0rpeIY2pIW59/7JuqFw?=
 =?us-ascii?Q?NBampNhWSpzWDtzyxP4k5ecG580NUWTwRr0+lYhXF5DdlMe7fpWMkQEZDHVg?=
 =?us-ascii?Q?feRfjETUmTFzkxwOubhZe0AWAdEqcfxQTSS6/N5a8WBaCbvSePL2XdpBX/ep?=
 =?us-ascii?Q?969+OGK9ThG483gNRIn1Lph/3sU7qulSiLi4GrTrxYfNgGsKyIHlfsza3Amw?=
 =?us-ascii?Q?H64F9VOAqmI8bS7lRtdBsoh0u81vpmtIAof02ZtqeKHA3IJ3G6Xe8r2UKuVy?=
 =?us-ascii?Q?HJ5Rgbcwl0ir76W5UPDzigYldiyBQyOOVKSq6Nq49CMoyih60ujeGiQOlh6i?=
 =?us-ascii?Q?Yav7QcJN4kNd9I5L0VDvd52nsez4v4EMEqf+1fS9I41W9caz05esM7NQSxEG?=
 =?us-ascii?Q?X8Q60f7I5wTlMeU58zJHE8ZqnYh8lxjDRL72Q96HWDgSH8lkt6p9dENCLMOX?=
 =?us-ascii?Q?3HokXALBsViEGEESbRljyy/TFYp45/AyNOxrc+9q58vr7AWVG4w/C9b8aQL7?=
 =?us-ascii?Q?tur5GumClWi88kj8KwWGEA/0h91LKXAwjiQHULy4gQ9ujvps2X6A76P0KY8Q?=
 =?us-ascii?Q?O1R4T9HYS+N11Bw55iFyZ5LQS0i7OJ7d10C6z0J4JO1zoO6K9Bg40xE7OEFA?=
 =?us-ascii?Q?vSHznyhGZhFAx1Xyh3UUXAYwJEYn59wrdzIPOdehQIniq4TtxjP4ITAYtetW?=
 =?us-ascii?Q?+s76Tr3j2TZZOLQ+WBRDjAZDDlPeZl4NQ5SMpu8wgo4E/m1bDPtLMbCXUfrX?=
 =?us-ascii?Q?njLohmaO+dOB/CJ9P0CLiqnEM+s2vYGuyIIgijaGGKqFl2C+NQx5MoogjD1q?=
 =?us-ascii?Q?Wdxd0UVuX1SOP4Bmzc4Bma0CorKAGQbkDTtrHnyVKqJejcle4jBRocJw2x/E?=
 =?us-ascii?Q?aZAc1m1Hl6Ua7qQ7BMcu/DuiAvQ3KqH+fFl0NWwapujy1WQh6d80pyjVRtbE?=
 =?us-ascii?Q?ExI5YptncfMYK4dnBo6TT10UiTOPnx64M2wAlQqevAikVUZdrhvb2Ym3nC37?=
 =?us-ascii?Q?n+JrxwGjWPDoUK8Gw2ExtfcwPVcCIefFhkMp/yl0KXuWGiJZ+WNHOi2lLIUq?=
 =?us-ascii?Q?y8yVuWodwdVikFk/ZSlN8apyvxaE95wc3ItyTZDpX4Dvc3sgTDl3B7YCDSpR?=
 =?us-ascii?Q?iNTaY2YvASyd3bOtAPBIt2uxz0E/yiIym/PM4b/JiL3ImwNNdgNLt5h4+k72?=
 =?us-ascii?Q?jhfrbwjnNuRZLnFZs6eU4FT9soqti7V+008dsT/bEl81t/CyT9KQ+pK0m2DX?=
 =?us-ascii?Q?nRPRyuwe5Zk9UGE2gY55Z+7xzffLtkD+/OQvDXg9ljeXsdpty1wfkyrFQE3+?=
 =?us-ascii?Q?LUqWD/FDiMqbJf1AV3k/FzHfaP3pyfnJM4FHeNh0/kgt2EBRAQjVxElFUx0r?=
 =?us-ascii?Q?oy1+A1Gqe9HVgq22SnlB6uXaaZPEkIimu2er0Ak+wXc8dP+5pikDMBnPsaYK?=
 =?us-ascii?Q?fcB4nyRTnv9aRbHx+lyZ4ltvChsyhsMdCXcIjAB0mB1weifkvVYsu6RQUwwY?=
 =?us-ascii?Q?Kz7U7s8B1g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QcJjEdhezDLW6uhxRv+qbe/0QFwyku0al8g4RsBU8HiAXJFTGMabES15IGeaxkGxqavVeyCcZLOs7Stuh/m+uzbbFvNo+yUUT9j+FFOF3Bu7RAUytFqLoD8Ex4mSjk1jeYB5NVKr2MRqTzfY7f+9BIR/N1cNb/oDI2t0LV3MsP5Bq1eFaQxGYNfUHvw+sBuTfWpmVoYyK8YqrHj2RYP0qFRNFwXSec6I/3Gdj2dWp2gEjMzaGLyFkosfpwougC3QCjjrLLp3RJaxSUZVdtTd7FgISMbMgGa24sL2A9UMC20Jn7t/uFcaRJGfYYAgXAFjQmNQV6cMMezjCMGC0W9KvQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60c1104b-746b-486a-8ba2-08de945098f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2026 02:51:41.6538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hLWPZA0wVSVpz5/O7MmJOfaiW7UPuxe0kJLQFQj4pOnajfviFcz8J2y6+i9DbNCfm+N8xis2YG3HrTmhbE7g7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9110
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2D0A03A93FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lu=
ca
> Coelho
> Sent: Tuesday, March 31, 2026 5:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; jani.nikula@linux.intel.com;
> ville.syrjala@linux.intel.com
> Subject: [PATCH v2 1/8] drm/i915: move SKL clock gating init to display
>=20
> Move the SKL-specific display clock gating programming into a new file in=
side
> display.
>=20
> This removes dependency from intel_clock_gating.c to the display's intel_=
pch.h
> file, so we can remove the include statement.
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../i915/display/intel_display_clock_gating.c | 19 +++++++++++++++++++
> .../i915/display/intel_display_clock_gating.h | 13 +++++++++++++
>  drivers/gpu/drm/i915/intel_clock_gating.c     |  8 ++------
>  4 files changed, 35 insertions(+), 6 deletions(-)  create mode 100644
> drivers/gpu/drm/i915/display/intel_display_clock_gating.c
>  create mode 100644
> drivers/gpu/drm/i915/display/intel_display_clock_gating.h
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index b677720a1c2d..63a9e16826a9 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -255,6 +255,7 @@ i915-y +=3D \
>  	display/intel_cursor.o \
>  	display/intel_dbuf_bw.o \
>  	display/intel_de.o \
> +	display/intel_display_clock_gating.o \
>  	display/intel_display.o \
>  	display/intel_display_conversion.o \
>  	display/intel_display_driver.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> new file mode 100644
> index 000000000000..4a94593335e0
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright 2026 Intel Corporation
> + */
> +
> +#include <drm/intel/intel_gmd_misc_regs.h>
> +
> +#include "intel_de.h"
> +#include "intel_display_clock_gating.h"
> +#include "intel_display_regs.h"
> +
> +void intel_display_skl_init_clock_gating(struct intel_display *display)
> +{
> +	/*
> +	 * WaFbcTurnOffFbcWatermark:skl
> +	 * Display WA #0562: skl
> +	 */
> +	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS); }

Not sure about this being moved here but I feel like this belong in intel_d=
isplay_wa.c see that it is a WA

Regards,
Suraj Kandpal

> diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> new file mode 100644
> index 000000000000..00f416db7f47
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright 2026 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DISPLAY_CLOCK_GATING_H__ #define
> +__INTEL_DISPLAY_CLOCK_GATING_H__
> +
> +struct intel_display;
> +
> +void intel_display_skl_init_clock_gating(struct intel_display
> +*display);
> +
> +#endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
> diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c
> b/drivers/gpu/drm/i915/intel_clock_gating.c
> index ee2489a2fbe7..454334fef5e7 100644
> --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> @@ -31,9 +31,9 @@
>=20
>  #include "display/i9xx_plane_regs.h"
>  #include "display/intel_display.h"
> +#include "display/intel_display_clock_gating.h"
>  #include "display/intel_display_core.h"
>  #include "display/intel_display_regs.h"
> -#include "display/intel_pch.h"
>  #include "gt/intel_engine_regs.h"
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_mcr.h"
> @@ -349,11 +349,7 @@ static void skl_init_clock_gating(struct
> drm_i915_private *i915)
>  	/* WAC6entrylatency:skl */
>  	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0,
> FBC_LLC_FULLY_OPEN);
>=20
> -	/*
> -	 * WaFbcTurnOffFbcWatermark:skl
> -	 * Display WA #0562: skl
> -	 */
> -	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0,
> DISP_FBC_WM_DIS);
> +	intel_display_skl_init_clock_gating(i915->display);
>  }
>=20
>  static void bdw_init_clock_gating(struct drm_i915_private *i915)
> --
> 2.53.0

