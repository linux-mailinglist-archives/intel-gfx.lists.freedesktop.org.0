Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5451AD87AA
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 11:21:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A1110E0D4;
	Fri, 13 Jun 2025 09:21:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FktldHB0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 102D910E0D4;
 Fri, 13 Jun 2025 09:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749806498; x=1781342498;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zjinwn4XO9d2tOyOzyAO8ymEdV10jRZjUBBKdxnFtVg=;
 b=FktldHB0Q+JUz61821NpL6RhygrcYX70FNLrklSehi/Q0Pjr1pZUlaES
 DkQMdInFyOzJeE+m/WnZMkbXW9zzg64qT5FXdrHXYKKI96re5hbhWq6oZ
 qiNUwOzDZ6rwTwbmMIaU3A9mOQAwToeWLxTJE+ncXEV57O37/A3N3Uvhi
 pXfr/b4pIlmPyQ1lnO2A6cVxVasOEZcCEYnHem3fzjkq7elUdOqNpHAgc
 +48mlk0pkWqNhkpmjrpeYoo5Np228aixc3q5iPCLsmJZHonH7saMjAdwE
 fJmDFBN5AHpYWenKtOp7sLou8IaDSzVK/pGaeQSs3dPSHVPTIXjhXQ2tv g==;
X-CSE-ConnectionGUID: dBsnyOlkSA2lY24RICggdg==
X-CSE-MsgGUID: yefH+Wk2TQOAgdAQNGhPeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52112434"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="52112434"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 02:21:38 -0700
X-CSE-ConnectionGUID: W10zS2y2SIqS75Qz3sFxaw==
X-CSE-MsgGUID: hogS5q5JRg6fkn2tW+ricA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="153069811"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 02:21:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 02:21:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 13 Jun 2025 02:21:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.62)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 02:21:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VaiIS+c/QsYB8GXnJZm8Er6GAZaSmmSraPBu5MSTGi6g2+1ReeGdARKr5yDxWHMlBuw1G1Q8H4YRrloL9ZyquMm9rh2wJDkEw/kESZtgp1iQPQq/MccUDKTqYwTt6Ly5bbntNZXmHHATb/U3f5kKAezKN2qaLIs1yex4fBAEV7CyKy7G2VVOUSg/OF+S3y3Pq6K19rTWkui3VzNgkVWtHlX4YkMy5oB5Tl78BxNNQYn2XIfYJVCKuqtR2Kj5taWdCF9NRB9p+BheKTxAkzaMyDSsilnkr9UIddVozuWbFYLu0sCgEol9vCrXCJUg+UnxZWUIA/mULosPpo8gsjjY8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aLpP3Wn8tJOreRnp4f1UkeHtW1S4f/ogAEF1JEwbjFE=;
 b=oYoCAXw3qssA54ptiswQDs5aGQSiVqcYoWyQrmAjt38PCz9mjy4BPebVngoNoVxgJa9/gmqeIirKdFkWOsXb8vXYMA4oqO6IzVJSwl6o/D0Kg9oFyUCQYNTWxfE0SX4e1xsxG1KegNrJ7t4j1p6lD0alZAE5HLZQgr1adTvY7XztgaUmeMi66bQSLaXz/EJnUaJncSGNORO2lK7puDqnkhmzRZoJ2W7EAePDVBA+PC6zhuHmp3EGncyuaPsBYJALc19bBJHHTcpCUtTUJGFxUDrugiwXvWlnwDyGWCkB5t+Vst8ajZj1U+1lE2BCMmvc95qFOKe5ulKNjmJtTcA//A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ5PPFC295640A5.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::852) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.18; Fri, 13 Jun
 2025 09:21:30 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%4]) with mapi id 15.20.8813.020; Fri, 13 Jun 2025
 09:21:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/snps_hdmi_pll: Fix 64-bit divisor truncation by
 using div64_u64
Thread-Topic: [PATCH] drm/i915/snps_hdmi_pll: Fix 64-bit divisor truncation by
 using div64_u64
Thread-Index: AQHb3Cu1Vg6oqALM2kOByIvenE4nRLQA0J6A
Date: Fri, 13 Jun 2025 09:21:29 +0000
Message-ID: <DM3PPF208195D8D7AE02DFC41F677A44511E377A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250613061246.1118579-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250613061246.1118579-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ5PPFC295640A5:EE_
x-ms-office365-filtering-correlation-id: 52710789-c52b-4ca4-1824-08ddaa5badf8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?PL5NlEzjh+zuee8uxdQ7Tbtju22pUC5gqEmV7JC0nAW2sKim9HA4XL+8eAKd?=
 =?us-ascii?Q?iaQenqJEry1w4bBp4E8GVnvxkRbYoX9XuzMjwgTfX51Gis4RKfuKwHQJpeSV?=
 =?us-ascii?Q?W9MKhR7ML/ATbjFTknQSWVvuHN1fgivNsTE/bu17sP2FL/E/Q6E//7DEVYDF?=
 =?us-ascii?Q?srdw5BHrFHphchpUxeiaDCxHyAoqPoJIdRZjyRvnQAypcpAL6w/UBYRd8tjW?=
 =?us-ascii?Q?mjyGXMjHAjHLOguPgP/ttQ6gEFv2sYozHZcVumwIUJkSdeq/UZg5kgbD13un?=
 =?us-ascii?Q?SJrisZkFeVby+ZKvdM/XtffCKE6aPaMpexcu1cPtPdQMISA2BOPQt6pVTsa6?=
 =?us-ascii?Q?3+0QJVF8+MWt/Sqn6kXL/atMEOqTYN7BU6mdeZ9zO8kb3wx/W1PFGSzI8sSb?=
 =?us-ascii?Q?nxzOG9/psR/97HQFu3pO8hrMreJsp0mrqhjMetWtFCrD5TCUO0spYzdZf1qF?=
 =?us-ascii?Q?qZl+mo0kMpGePywZ0Wl4IBvR00W67Zc6KN+NIVR+x9pLseEf0oEx8+/O+Mwe?=
 =?us-ascii?Q?LKrsKF0ZifGuSxXVaq253d2gLWv9BQNqyFWA+viZfoQlce8l6Ph9/5d7sTEF?=
 =?us-ascii?Q?JujgXY4Cw4jd7suqRI5WA2vMtxH1eobVTQQHuj2hYfrEq2M/G7Kce0H/sV1Q?=
 =?us-ascii?Q?1k+fuhXyLE4cWaOPd3Se5dshmiXpjq+SM02Q3vFhFDgSokSWudMauOV0IX0H?=
 =?us-ascii?Q?dD+fXHlZ+FedZk8tKHuhaD50nz9qNob4lLpnoQ5DMDF3annmLCBXLd9JGccd?=
 =?us-ascii?Q?W/Tzmy3DEIrmcVf3VxgAY2S0dxgjcFUUkXmtbYH8MkKtuGa3fJ4yw8VCc0M9?=
 =?us-ascii?Q?eWjKQl8Lzp+qea+t5sgJoChA9cEQ6AaXVLmokSvZ7BJKjm8ZlduCO4WABse6?=
 =?us-ascii?Q?ImKCXPmBdgpLfsdx1Rn/Mdi92b/lOJqAyngaqDYazn8U7L4PgAToqDi+JneM?=
 =?us-ascii?Q?x7ubleAaKnpYrkerk6HZ/hDXE4ASN4F8lUzWwTeFy//taeW0bJCCGiZD9d/E?=
 =?us-ascii?Q?3eQTgV0lrLoRJUeQTctOa0jVLvT2wHPMugUme1P4jvi8Lbkht5KMeU2IJNlE?=
 =?us-ascii?Q?BYrgyP9+EhtkQ6hZ6c5yQHjZOHqaHykPhBwVcXrKQcyguY3vwDYCYXaCMt7k?=
 =?us-ascii?Q?7POFF/UQuUo/VRA06JXvzUO16dUIEqRnypH8NZ37xh+0b/Z3LmjU7JE9xMVs?=
 =?us-ascii?Q?2FFjzeEf8cLi0q7eGr2CvE1efxwXkcdXXhO4b2r2tI8xhyVMjKKecAEIgpXr?=
 =?us-ascii?Q?nNv0Y/ZOzg+VYWoYauR70k5S2LV3rqpJlbgIKO5c6MDfoYwlZ0qnrCSMtSxr?=
 =?us-ascii?Q?57XXIedm+cMSV8XkUOfdx/XGQ73hwsHu78g+ttPqKx8QqrJdP+3vHOhexfcp?=
 =?us-ascii?Q?lOBufiEUYFuAsHbckwOSbzr5MTHNKh6oEP5LcKXKKMV1Pf0xDf3O/jr4RU7J?=
 =?us-ascii?Q?h/U8iS5HZARWBQptCN7SXbueOxjiCOWnpg7K3Ilcd+xiJ+CTwSSbKJYfcNKn?=
 =?us-ascii?Q?4Y+8WPNPQ97sxCY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NLXrgLtkhUjtTyD6uhr9GgsJRAQOTHRwv+vEmPNpEqYWdpfhu/EbDz+cYl7N?=
 =?us-ascii?Q?s7/lau15lq/+Qqd+Esl/tDDbz01qMWnbzZS0ScKjhrtXJyOxeqNeewWPBG/o?=
 =?us-ascii?Q?Q7SSSd84miuDKNkvi9SsAJd7b4TIUwaBDjFyUR54hHDgRvOX1dVKXgN2TD/p?=
 =?us-ascii?Q?s2nYFYkyt90XeGpz21ANa6InEXQZ6sUaeH5XgnM3RED6qYqiNjFFK47q5cgN?=
 =?us-ascii?Q?EN1GU4VEEXFtUavrZlc2TA5pGTBkQt251nVj3nrUrRF2AQewRjFodO+JYskN?=
 =?us-ascii?Q?CdHmDjRCJAiN8DRnWl+v4eFGZ4TT55ydCHoU2tbtHzWO1qcIRphgQWCxBnj3?=
 =?us-ascii?Q?4/7pHLKIj2uqj6NjAFxYTm0NXVPQ0GqXgDQvhrXbnF8sF8E5c+jMh+6o5Xhr?=
 =?us-ascii?Q?c14HJrVTLMo+Xt+9BYR5nEkCUQj6YQXVA/M/We8wkgpCWsRRj4TZ9nbKR5ZP?=
 =?us-ascii?Q?wv4cBnFXdw+TJ9HBt8z1+0AMj0liOK91eJjese3ey9dDLonIq4rcB3TsTtXq?=
 =?us-ascii?Q?auCJ69Jxaw3fb/WE5ikvSfMslwKZo5kCQwSBOh+fE6gZipHtQvuZ08rEixvN?=
 =?us-ascii?Q?yItlUAv49fKqmxDyLAas9rjuw4pB1qmY6yzo2TafIDnEb65tdiH6V4E4zHau?=
 =?us-ascii?Q?kLrzb4L3lbxR+2NBYRVoA7b+wgFeQd70f8P5MXdyh3NaGu7bTnqdt8UBG1wT?=
 =?us-ascii?Q?bPpcMHsuiUlG2wrLCViupQMvdcMBLQTb5uLK51xM43UTUW7lwihv9LprNHUF?=
 =?us-ascii?Q?Ejev2obJSlF2wS1K1P04fjyCgMfxvX+GVAnEa9aSpjwoKXlwN9JIFY8MGQl0?=
 =?us-ascii?Q?dXv0J+Y0xWwWlEHVCsWYa2p2tZ3RfP9otEVrucHk5I1Ae6OOBjECXzCJlgkK?=
 =?us-ascii?Q?1CaEcPKCfPv5WrrzxY57oxq5KViXwEtO8lf68IBg9JCNI2tF3RK2QGtzqf9u?=
 =?us-ascii?Q?Mu2uosadAwtgT2o3QLofJ1+iU2LqtpagTjmISo4imyQP9aQDyR9vByOfxFKA?=
 =?us-ascii?Q?E+kko/wwHEdwUwyNmWZAxzb7cSqYEzr8LD3bIHTbtmxarb4xmSaKeljq+Tcj?=
 =?us-ascii?Q?oFtrx33V9R2OvSH6K4tSCy1ojTss/orvTekzHHci0L4E9tHW/shqjZzulggf?=
 =?us-ascii?Q?dLOOaIJjvGbE+KAjhWVbEgIG4HFHEDBJ/1VsAthZx2i2o4BUytBP5zu/ej5Z?=
 =?us-ascii?Q?YdOwnbL2u01b43zzzz6hqVGr8fSj04s216Wnjq8NTrIYy2AkRTh93zSAAQ2B?=
 =?us-ascii?Q?gLPL8T21/VUSBpb1QnOjp1lNUfVKydfPJ18QilLp9ms8ZHNbT5jCR5x42RTH?=
 =?us-ascii?Q?rUbWIFFY3iHFv64BTVl8xdXuvDgVWltXFnUYNr4V2dyf3ZMmG9AZxRLCTVq5?=
 =?us-ascii?Q?7/A9ZGEYcxr9j1h+cjXOajiGyPj+mNgzYaZZPL/V7fN5nqMbsZh7q4wAy0FR?=
 =?us-ascii?Q?E/WlAxep1aPHFcK11igLGIHGC6kDEYjtH0qHmKl9qRgRdNz/9y2rkzv66JjC?=
 =?us-ascii?Q?adaK8E2bfKq38PyVZ3CCjMkW2ute6xt1UpvI7Fp4kZmC9y2UgtR+t/Y/XbyW?=
 =?us-ascii?Q?lyCs1+zkAadop/+RsBJOGO+Mrt9q7aqY5jATgWdR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52710789-c52b-4ca4-1824-08ddaa5badf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2025 09:21:29.3846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T18wtKScTXuWD8q3b+Nl3mms/tO/MR39T4yJKu3esWLkiuh/AV3yBhf8jsfusJGMTT1O2YWLpZ/ro9q4qWaLcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFC295640A5
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Friday, June 13, 2025 11:43 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; stable@vger.kernel.org
> Subject: [PATCH] drm/i915/snps_hdmi_pll: Fix 64-bit divisor truncation by
> using div64_u64
>=20
> DIV_ROUND_CLOSEST_ULL uses do_div(), which expects a 32-bit divisor.
> When passing a 64-bit constant like CURVE2_MULTIPLIER, the value is silen=
tly
> truncated to u32, potentially leading to incorrect results on large divis=
ors.
>=20
> Replace DIV_ROUND_CLOSEST_ULL with div64_u64(), which correctly handles
> full 64-bit division. Since the result is clamped between
> 1 and 127, rounding is unnecessary and truncating division is sufficient.
>=20
> Fixes: 5947642004bf ("drm/i915/display: Add support for SNPS PHY HDMI PLL
> algorithm for DG2")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: <stable@vger.kernel.org> # v6.15+
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> index 74bb3bedf30f..ac609bdf6653 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> @@ -103,8 +103,8 @@ static void get_ana_cp_int_prop(u64 vco_clk,
>  			    DIV_ROUND_DOWN_ULL(curve_1_interpolated,
> CURVE0_MULTIPLIER)));
>=20
>  	ana_cp_int_temp =3D
> -
> 	DIV_ROUND_CLOSEST_ULL(DIV_ROUND_DOWN_ULL(adjusted_vco_cl
> k1, curve_2_scaled1),
> -				      CURVE2_MULTIPLIER);
> +		div64_u64(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1,
> curve_2_scaled1),
> +			  CURVE2_MULTIPLIER);
>=20
>  	*ana_cp_int =3D max(1, min(ana_cp_int_temp, 127));
>=20
> --
> 2.45.2

