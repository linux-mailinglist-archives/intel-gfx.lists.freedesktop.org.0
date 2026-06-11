Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TrsbF6cDK2oR1QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:51:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E67674931
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:51:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=a5YhLS56;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC7810F0A2;
	Thu, 11 Jun 2026 18:51:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 143FF10F0A2;
 Thu, 11 Jun 2026 18:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781203877; x=1812739877;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l4aphnbfmMD81RhbegtlTa8abW0F5hSkj2Bcvq+14+M=;
 b=a5YhLS56lAJ4VYL36zGXceV8PToRDfZop2av5TAkwqu757hZ/le34zXI
 qxumbPU49IcCbJ9ecgNCn5Vti9LYS1PL0IU/CbNWKH/rOcHsefVVU35Zu
 8IhYtx2f1jXfalyM5RelLsNbRbPj+jQr7WSADt6Epm/Y98qA8UfT3s07A
 zwcAQu79Al+xSlcV0BTuu7QLLj+Bvju59D+eNaGP5YlKCO1lSMzaqrAEr
 gHBlpFSNH+vMVzsBBYQjDM2P/r+yCFZfLmJtkAwCa/+y24bg+RojhGGsG
 QeVUwPwqw7BCJQcejqHV+6IjfBNn+0yi/URNmka84E4seZR50W7gv5nCh g==;
X-CSE-ConnectionGUID: cKjEmI0aRQGdPxPQx9ezjA==
X-CSE-MsgGUID: b70kkc/WT8mRlfC9S/dRYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82034296"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="82034296"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:51:16 -0700
X-CSE-ConnectionGUID: AEup3tfPSFaMi+/aTxvS7g==
X-CSE-MsgGUID: KI0VGA78RnCLGIKpov/6FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="244140493"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:51:15 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:51:14 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 11:51:14 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.3) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:51:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X+Y+JJ+kMIjKbXCf3+5xZrhbv7L68fbKjJ0qEHEOeVHnVdf/bNgghGX5ueujwCFtwclFoeag06sekTtFLGIW+qoP3wrQdMeblhyrO8knam7a4EO3zB/ZUB5wMvTNZutNFd3tujbSZ8wUEEK2RYOPHBW7rVR3+J0znxN8R9cHkeDIExBgiDq85Jx6Tt37QFBjqc+kndR0Lg9XuPm03ZpxzLejmFp4YsOGcvNzthYiaO1CsNufihxO+uy7KkmIrp7Mjwb5Prv1qoKQwc5rFJDukhFYP8A/z2G50Iruc0FpXEbURE7UKN8bMB75z2olCdEAVi0Ba2jhx3pdcxYnYcGyXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lF5QDqA/IuOgIJBMdvrvxWbe2n26uM9IdbcPJN0Vfww=;
 b=NEokjrbElBF9Yz/A81GQJQU/1BRAym41of1v27QoTvv+ExxQ8hGPjAFiZjzVm2VLPPS69jJ5t5zXRtgP0qyd2xovGhk0id/jYDu9ACWvMogi8sRRyD4Czx2KbJu5wJq1XsIEtYFEPQGndKdLnCIUJ9chh8IafsN4RtfNtyCECbulDLbnTpw4ocYuXsykdT7B6Dn7m7vqPhMJpA8IMtSbv+X/4gFwT3Qp3EZD+swac3oQEJBpIt8SQVaDCCedpOvihqPpfKvma5UrWCowZ9TORM9jZLreejgdHABjSQ12CGI1ywc9JBHULUg9an7d3FXCxt93mUzSMXIZ3Jrkc4foAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB7326.namprd11.prod.outlook.com (2603:10b6:8:106::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.13; Thu, 11 Jun 2026 18:51:11 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 18:51:11 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v5 06/14] drm/i915/display: Add DC3CO support check
Thread-Topic: [PATCH v5 06/14] drm/i915/display: Add DC3CO support check
Thread-Index: AQHc9MerNTXkfa++SkyuvmMg5U3Zy7Y5vNew
Date: Thu, 11 Jun 2026 18:51:11 +0000
Message-ID: <DM4PR11MB63602FE8043FDAFEAFCEDB23F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260605084421.3912865-7-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260605084421.3912865-7-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB7326:EE_
x-ms-office365-filtering-correlation-id: cd58bcf8-940d-40c5-fba3-08dec7ea67f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|18002099003|38070700021|22082099003|4143699003|56012099006|11063799006;
x-microsoft-antispam-message-info: uXzK3jCDnl7eYPEmT996AXc/nW87BOnHhRedpkadK6g9Ewmd6YU2tmr0sfPWUmHznPZ76MuA9cZ78ouX0I80Ich9qlrk/VGzppsvjEBK085n5opnW0FIiwld4xTPgcrDoPCUZ9SsKsIuDMYQQJFInd8G5vEFHJpXtqLl9s2gIenOJL0yaBTnGO7zuPUW9ti/Yew9S0NUNVvlwRk7zSs/wJab2NE8yRTqfYdGgvvMn6RmDObz1Zcu06jG1FQoorJVdhy/+f1r69udgwtz0FKT4q+BOjwO+Sx1IVezDfDg5IuV7ZQOeIqRp31FBC9y1QOlMSeIzVqnOYWVycqeqqsblC4JWAE5kjQLTOfhSslk5tAhDwU+xruK94MtxCYmA6PCYMa7AiFyJXG1yd99m1vbXNfPbF8MVCITXAbZnOPiSbU13fIsOECpf1u2ZMCzPLAUHT+QTOsWPIss+7SbnPb8jQLuPHq656cFyNRAon/ppWaVhliqwSFIWzNSZLoaUzmfbNnkJhHNaMWEJ89j4tam6lTiSrj3yWa4qRohw9d8nwDoCDMcFt0GRnS2ikdICJkfj94rwPd196yMUGD/V5N99youLFUeLD8iOPYCYxvkctFZYZx/eo3H7RTBCyPYH44uaTTKcQwWxEeKlmsSQ0rRZ3TplzrmLcgCGkI6HXDbXstOaYakAuXODtXDXY7Vldinel//IvmOsDL0Qj+uhmLAkdg4n6PkyaT6fsy1lqd7B69ruGaLpjLtYpnJ2Xy0jKhw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(18002099003)(38070700021)(22082099003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b7v6lP+UndzjysZyDoss2hPyAueVg0HJwnj6UvWZsZDziFOYo0SHrY9sN7Se?=
 =?us-ascii?Q?ZsqGPH3ySrd6Fe5geafB3540YfTBScoz/cSre7nR49XL7fOr5o3eg9UgTb8F?=
 =?us-ascii?Q?9cplVAqqcWFAUUlzgfi1R5+PLA2vTy7SA+vB2se8C9tL99mKsHmdqUB/nu6Z?=
 =?us-ascii?Q?GAGM0iTGRVC9NpgT9Gi3NtjVgZAomdh5aGWA5mTQzLyxYT26uMNV2nz2EGkJ?=
 =?us-ascii?Q?eiFq8TbPrAAYCybKiqwSkwXSw5CMkHbGhVWS+7CeIa/Py8pmBTCJnoXmrYA3?=
 =?us-ascii?Q?iqVvHNY66nXz2SC9nKrlGaqSvKO7ZSI+CCylVIDYK+kORmA8SYnbVlgyUEA0?=
 =?us-ascii?Q?zZnZlyANE4NDJieVCPkeAnmcXipFOLp9S2srpANjL8lSfatvsjJlM9Hh9RhD?=
 =?us-ascii?Q?JFuwLrwoCKMJ1znPLVZqi6rZb0OF5/zZMdj9iyiMbfaaNTtTI41/8s/xwySs?=
 =?us-ascii?Q?cPSfm8lPoenBAzRA62JBJt0xemuAPZ8OxItrczJemsAk8JUoK9sih4xmCSLo?=
 =?us-ascii?Q?Tn3FIlY2av6tsNbfndUmpBoii8UgAhO383cSwoGk4RxTnLFT8kCSlUgMZTVv?=
 =?us-ascii?Q?/gRn56KZRsFNO596DWNsCz5gSmQdpbb43iGyuBZbSJxOcxTXQS7HtAcJ1F2c?=
 =?us-ascii?Q?A12UIqdAmoq0gWi6hkozxd09M6ddZdInQg38EnHLA+taErGKZP/CdBcwy03Y?=
 =?us-ascii?Q?Y3qZkQBOtd9vgtPSUCflkRqZI/5pexZrJ0hcWFmAdnfTUQNQ+mzy9dbp5kbD?=
 =?us-ascii?Q?4aTgS99N/OAUGbIlj5MKFLTO7C7KrFFLX/5aaNuVtx+LqC6svxLykDlvcfsw?=
 =?us-ascii?Q?ChtGhni1KoJZnoclrHoh1LJIkzCgkN7sVU09r16hioxYwaiIbfqDQZBSh+yH?=
 =?us-ascii?Q?cnfUdAl/FqsmTzKFoRU+xRi3WJhpB6y9K7u0dOAeeAg33irOj8sBwCX3kkqR?=
 =?us-ascii?Q?wUK8+635fg7zWHh7RiImXaZepmRhpDmG4JbuN0huP7W+7HGi80xkBiaR6e4l?=
 =?us-ascii?Q?zfeyaJN0PSk3GC2/qpHvNlyVt9sDjh/322oMTZMm5EcpQFKWMvsE3UQDiRXj?=
 =?us-ascii?Q?Pb9Z8kGZbvxj2TZ0V45C3+SK9MAEdD31H0wjtyIJXK8+4FXSTZpAhwpNmoRP?=
 =?us-ascii?Q?N+Dh0IbhwUtgzQSTH/b1WVn/ZSZg9Bz8SfDbDRi89WoMJW2ZSzmIUw7QfY2a?=
 =?us-ascii?Q?qV9UEBsOmWoD4S6UFna5FQT4W6lBVpzUP47WSyXC448XHELbZg3E26YVYkms?=
 =?us-ascii?Q?UbQ1MP8xTeIaXB6Mcl+nwnbmIflBVX/tzkfgD91oYd4q2XHsZMX8cvr86JYf?=
 =?us-ascii?Q?Yh+LK5pjlcrsXaQDL2OxfKzJ8q33g3PwaykbR1ZoHvjsvkQbuaitSIq3iilv?=
 =?us-ascii?Q?fBZdopnCacL3J6drjQmVUb4dtS25TxjTEUQNx344I/Cfbh/MT3i/9qKTS17B?=
 =?us-ascii?Q?W4vOG69++HBNA4fFKl+4feGRUlvRZr9od/19m+GqjpNkrbkTGb8WfpSl6++1?=
 =?us-ascii?Q?RBrD1+TXz/t4LZ8i7DIiOM+7prbnLJzjVmmGd4tgGKR2j0DhtuuZ26SJssVE?=
 =?us-ascii?Q?LUJofb0/6ZB0YsLENQF68dGoul4spvG8sQ7zz5UMnTuvDU8eH12W2f7aRhRR?=
 =?us-ascii?Q?vdaeob0J5HJmggn0CNK/9dv9CHb4YW9I3VQjoqEY740SgM6o1/4Ra8vx4c+U?=
 =?us-ascii?Q?SFd2K793YVXY6nBLd33dPTck1Bh9MiSi+UUCycVu/2Its3cD3bq2I1FMonRJ?=
 =?us-ascii?Q?9tEFhXB22g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZiLTW7TsSivXzcvdgGv4qmFZurov8yeywvCatDCV1+QeD+aVjtnMYcbV0y3epelDRzoQc+fOdUWdtteON3ZO/RhTTZGb8gA7cZ6X/x+aB7xDj+SEKBTDCxQKr8Dy/WjxHTHmo7LoF90IZkwdmoLWDHpxVE4jmGEXg7Sd5NGesGQOhIhEOSKau5uFY/xtMLJ2dZvNh8E1P2TfaiVrWIHp37FnjiuMaCyY1NvHdux836BznbdwIUeeRmsvn3gFswaN95t5mBOyv7lPZ4XXsldg/8jEQWtCh1ClLAklYjkkko6/KarXSimGcxfsiu6ehatROZj8aAD8zRTWXvRMdXPIqw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd58bcf8-940d-40c5-fba3-08dec7ea67f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 18:51:11.3497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hhBfsRBJJIgDGYCIeiUaUtRAhgrB8z9bxIurnZklkZZC2KA95eObsxjm8ZcoYXvSa3i7KDyOmXSd8XPAkrOGIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7326
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B0E67674931



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Friday, June 5, 2026 2:14 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v5 06/14] drm/i915/display: Add DC3CO support check
>=20
> Add intel_display_power_dc3co_supported() helper to query DC3CO support f=
rom
> allowed_dc_mask.
>=20
> Changes in v5:
> - Add HAS_DC3CO() check to intel_display_power_dc3co_supported().

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 10 ++++++++++
> drivers/gpu/drm/i915/display/intel_display_power.h |  1 +
>  2 files changed, 11 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 271d50d5da3f..eadae8eb5709 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -358,6 +358,16 @@ u32 intel_display_power_get_current_dc_state(struct
> intel_display *display)
>  	return current_dc_state;
>  }
>=20
> +bool intel_display_power_dc3co_supported(struct intel_display *display)
> +{
> +	struct i915_power_domains *power_domains =3D &display->power.domains;
> +
> +	if (!HAS_DC3CO(display))
> +		return false;
> +
> +	return (power_domains->allowed_dc_mask &
> DC_STATE_EN_UPTO_DC3CO) =3D=3D
> +DC_STATE_EN_UPTO_DC3CO; }
> +
>  static void __async_put_domains_mask(struct i915_power_domains
> *power_domains,
>  				     struct intel_power_domain_mask *mask)  { diff
> --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 56dc89eed3f8..06b3e49e5f8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -182,6 +182,7 @@ void intel_display_power_resume_early(struct
> intel_display *display);  void intel_display_power_set_target_dc_state(st=
ruct
> intel_display *display,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display *displ=
ay);
> +bool intel_display_power_dc3co_supported(struct intel_display
> +*display);
>=20
>  void intel_display_power_runtime_suspend(struct intel_display *display);=
  void
> intel_display_power_runtime_resume(struct intel_display *display);
> --
> 2.43.0

