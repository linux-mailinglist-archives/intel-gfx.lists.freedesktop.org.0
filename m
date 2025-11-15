Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75226C5FC00
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Nov 2025 01:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C47810EB89;
	Sat, 15 Nov 2025 00:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TsIx6lzz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BBBF10EB83;
 Sat, 15 Nov 2025 00:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763167237; x=1794703237;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=DQbW9NUO+6/HIjdtDXOij940RH+1QtSpvXJ7kJdIPZs=;
 b=TsIx6lzzketn6ZgvUmBwTEbGlqv17t0s7YrZxlZ+y3Pd0VRWQZl4uTQw
 roODDd2KeRKbBaSM09UX5+8DCeYmEtTLq06gxzxVz6J/JXpV/4gQWVgNT
 9wNln9+IeYrp289UXQS3FW1FHZfRHdru8XQcCmK7duZlqX5S/+1dbada3
 kY0snd3/ByGBmXRrAhm20I21N7C78P9C2mUxrZQxzMBdySQZ0FyzSpZPj
 OQfK3x3rasfU4qxCnnaES2pLAa8+W04mjWhC6YstZs2/C5qhJCGUSLFzs
 mGo+3hTmhJ90jsRRB0LSJ1ifex7YiZlLGsj3Tx5jXumUBTtFb7TVjLtk2 w==;
X-CSE-ConnectionGUID: pJkhV9qTS5am5+vT5vxQLw==
X-CSE-MsgGUID: w6w8ha2aR0Sjpzhc8wFnzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="75585368"
X-IronPort-AV: E=Sophos;i="6.19,306,1754982000"; d="scan'208";a="75585368"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 16:40:36 -0800
X-CSE-ConnectionGUID: B6UiPJitQzSGV6LSBh8b/Q==
X-CSE-MsgGUID: DyI0GUqDSUWWcHAJBfZzSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,306,1754982000"; d="scan'208";a="190096279"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 16:40:36 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 16:40:35 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 16:40:35 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.17) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 16:40:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iALBfXW1yd+T6sBx6OeDUKnSqp9FpframCepC+vJVaOToB0KzGBh2M1e5iLEb7GVvfDsjWKFHJeHRudBZpIqn2j1wQMdbyPwm6PUGCHSp8RbvKrBJhuUzZWi3sp3wnPu+pCuOfv+LTCKAgTzfBHv7AANKVrooqcaR5Ndou4F5j1qLUWz9uhiKesCTYiKn1b8JP6VmxvdJOkbusXRnnYMbQyFkHSvTRlhULiw3uQgvRLU0OcSyU/ASAIvf26ogW1olaCUBm2f5JdyRrLcWvgyZFU6m8IP68qvSjyBr12i/+N7nHFfRqFygswfkm7dlgD5q92twebNND6Njikb5OOjvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mT8DI4b2aGXsAwQdgHmTyHJ4qoPm8m1vkSnhXfz9D3c=;
 b=mhl7KuPZMDuM24TDfgiuwwEH5Xk23KeB90VBAoIn3mgxHLrdZmpxrCTrIYKW/4PsOvxYOnRAE235TOdHAYPQHAtjQE87zwYjlrJTW5t8IV0R8mwQ+sEhUlWxISWLfZvdf+KkXrgNbkaFD/W7ulgWazLKIX6gFlahCl6bqqX6YFBLfIElpf0GhRN+ExDmgxOYX/qHjldytp7AzYBlq9TL2WEZnfeK2drHTJFVCiXqzSYAJxN4Kx+eu8b0aB79v7QH/FRZWw3yYa09x0DvqY/DN4mq/Z42fkA07lWLItTlEuWtw+9S5YIhRjWcjQbVrJX2bQU4cFOFuCKWIpETs+qNlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB4942.namprd11.prod.outlook.com (2603:10b6:a03:2ac::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.18; Sat, 15 Nov
 2025 00:40:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.018; Sat, 15 Nov 2025
 00:40:33 +0000
Date: Sat, 15 Nov 2025 02:40:24 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v4 07/11] drm/i915/xe3p_lpd: Extend Type-C flow for
 static DDI allocation
Message-ID: <aRfL-CWPYR6gC6F6@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-7-ab3367f65f15@intel.com>
 <aRTJq2h7ic7EcpL6@ideak-desk>
 <176314958906.3698.11640605946760436324@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176314958906.3698.11640605946760436324@intel.com>
X-ClientProxiedBy: LO3P265CA0031.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:387::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB4942:EE_
X-MS-Office365-Filtering-Correlation-Id: b9665fcd-c3b9-465b-0eca-08de23df9545
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/4vaAajNWIE299VU9grchC2LMbskNvIkJhPd0clSkwuBhjvqwryKxCeyis9C?=
 =?us-ascii?Q?XIE9IfudvZFjdkQAZHjbZuAWZYcdKi5mzoY/kpqvqMEdAMERX5xu54bcaEia?=
 =?us-ascii?Q?SRATWhxb0wdLygIDSDcUJzVYcncMo2iIaQy3195e1sbaQzZp6xErRPce5II0?=
 =?us-ascii?Q?GK1nAg5uZa/rMS5EHVFvHEnYEvzl69ppz1GU91zi4aUgqwLg5tudtjfkWB89?=
 =?us-ascii?Q?C7s9i5XMvZ1ImcrgKea9JMFva9pLkJsIsz38JcfMZZJdfihsFaPZrYD7icWD?=
 =?us-ascii?Q?eDas7itiiZaKv3aA1qct9hIgjButAB73RK4rzwh8v3XWI5+jlVUZpvn99ynP?=
 =?us-ascii?Q?AGBNWUo1IdwlVlJmZVq7teqpC1dAJNNQdWAnJgpgj5WQkrbKsMfRv/GANXLu?=
 =?us-ascii?Q?Tt6zOEu1dm+0L3CdR2c8uiUqaK6LuVkyA0eNMSnNUVrUwqtjFQhs3TYYn4ug?=
 =?us-ascii?Q?5DxkDUHl33dNEafovW+Y+jjtMGeet3genjfTi7NSuDcBD1vD0aMyRT5h4S3e?=
 =?us-ascii?Q?tlhJB0rI++F/sJy65baZaWVtojHcQa/cHVn/GzfeUyv6kTWfwR7B+8/Jt0R5?=
 =?us-ascii?Q?Nempiy+crIzyYTnX+UO/xrq3LG6NCR/gsicGIdrK/Wi+aYHhywZDN/d48Pj+?=
 =?us-ascii?Q?IKTMpPIh4kInpSbVU/nCJ3SE3xm8SjqBmebVI2gy6rnxg1XWKY9JshwDAD3n?=
 =?us-ascii?Q?MzR6tIvol31Qc0A4H6f4KUOAuy0rfUhdnSgEDyKx2ySNFX+Q2ZT9ZBRvAXkw?=
 =?us-ascii?Q?7OLOVZ38LOeyQo5du6cWPC3Tg5B//QMgOMzKOulmL2dtE2tOpRJO+Qgt1xh9?=
 =?us-ascii?Q?DNWVwiyRY5XD4sYXYPH9bC8g60WWOedE6wgnnRE8LkrCqZJI2KaoAtNLEQUR?=
 =?us-ascii?Q?TE0NDO1fNgh2CEJavVYfXXsaTI++yA54ZyfSm98CFBsxYatwEQty7OlqXa50?=
 =?us-ascii?Q?lZhNmefjRg2SDf5GGCUn2J+3amzmRlWMZHPDhlSdxoKHBmh8SCYdajJrHCEK?=
 =?us-ascii?Q?ddlIAaaw8NY4lL6WhFqUJ5+0q079uMOTD01Hm6tIX2CydWKwMTHX0Bsgnq0I?=
 =?us-ascii?Q?j7fs4g/Cj+XPhxEx1iPGFPW92dmCMk98fq0jWuewLE6JWNjOQrSEGq9riyFe?=
 =?us-ascii?Q?omken9MXGkJDG5UYeZc2NuT6GIYL9Gh9KlJt1mC2MApETif3X+lV6JRDvdE9?=
 =?us-ascii?Q?sNJNPOYLhKcmWXirG8AiqtCLdtlgt8p+OFbP6I4osmpEQKHdD724U+NlEaJD?=
 =?us-ascii?Q?sEezrPfqERA4DW2P24SBR7yv2xxRx4grjmWVeQQ2qHQXi/j6a+yNDBt+9G5r?=
 =?us-ascii?Q?ErLUEpbkdu0bVvZ9uSs0ql9CEVWTETu/7g7tKvfxWjy05eNF8O4K8PNGq8Mr?=
 =?us-ascii?Q?wp8T8tf3t2aV9fc319uCpux7RSGSRJKE91+6ZmP9LDMmqS21PTdtiGEc99VU?=
 =?us-ascii?Q?bivBHXdaSdj93TcwV2LAhnjQfhzUKwyem1tKBtHd4MHUsJmX2+/CsA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HC16pP5XGwgG1gIo5B8w0HggGlq2GY2y9paPsdCZ3Ldhq7pzc74JcWzfdUDx?=
 =?us-ascii?Q?WVkr58DX4/O/WFdDBjpfKBLwiZzIfX64IPCQq0UcCB0iy0QMDHOJ/T/vwH2J?=
 =?us-ascii?Q?V4LLk1qK3hbU57olVIxjoHW6ZmotnJv77qnh81ChNp0fd0NbVq9zWw2rYWBa?=
 =?us-ascii?Q?6JWtw/7L3fQW3JPNvWU1m/ECkJ0RCdMkdPZDvUfIL02rBp7gtXobTCTsOjH/?=
 =?us-ascii?Q?1eYU/cZmaNtaeOfEICjCstnVVDXErea4AeDdF2hizLWy2L1fYTrxcnGk8q+X?=
 =?us-ascii?Q?p18p/l+WqiO2w1zGL49rI8Zf9PPjXTvRTZXtf2pYoNZXfzU39jF/PcnD3tkf?=
 =?us-ascii?Q?YkxE6d4Y1HF//ClhIJ2sg0Gy0K0lF3Oft3jRDBIcVuVqXP3xV42qIqxv/Tit?=
 =?us-ascii?Q?fjToLNIwBj3bNtBfReH3xLZCECjXzttVzwWnCQUVohaQ5jq5DVRKN1aCokWi?=
 =?us-ascii?Q?D/GQe5Jidw3G9jvgGP9VGD/BCZzHy0MAhJs+Tabu/nxKQbrci4sG5HNM6Wnw?=
 =?us-ascii?Q?xwjjr5Bg0MUjjhc12y2mP/sfnZqnvAlSLObzOz8GysZpw5KfWjW+d5Ifi673?=
 =?us-ascii?Q?BpdrmUeFVb90wuaqGRUuc1wgw69l/8jKwde3q8zzY2CjMdRZWHKakf1Ky7y2?=
 =?us-ascii?Q?40HsmPtuPEJ3voQHokLSNGRpEfPhBE/4smjDQZuA/m9SnBTv9/SvSbySv3eP?=
 =?us-ascii?Q?NaxX+RABPqXIXOCa2clSe3v95/gpvyeglXdyPUhdxP2liF+r520UGtAwdmDk?=
 =?us-ascii?Q?sPeywfsg2QBUZQMZKLoJvzUO6c7zAgMPLGN0VG84OyhCoF5o8ra5ycMB8RQx?=
 =?us-ascii?Q?NP9E+qLCPiFdQxgP3EN2BSCYsa56SJLbGjUM6KlSM2nfHLOQgVIttBVZzl8m?=
 =?us-ascii?Q?9/AOUBcdYsNbPvdcrkOdDY7i90uVCUHe1l91ZzpXYsP66kE6GtCBmNV7u0dn?=
 =?us-ascii?Q?DCjP8IWWK9eCLQT/OAxu71wdLAqsJ5Gobc4b5m8PTvemldYCThkSJlobywTn?=
 =?us-ascii?Q?vqQCJfftTSUCFJONwpoivVwmSSXIX53yw6G3HIs4UUQSro4KSqtXFEhJCi6U?=
 =?us-ascii?Q?+W+xaiTtZdPbz5YAOpzPPWjJbRfS+Xx8lSrXvGIN4lUCxfiTi7T52bWToFnX?=
 =?us-ascii?Q?DjXJ5XwaMwsgcC8lyXAg3uSvSe4pyjzy+ctnmqe/f/pDKyTmV1Jwq5ojR9j5?=
 =?us-ascii?Q?6PgPHXZviCo9c/2Pj1OCmbtblSrB5hkUGaVqB5ew4qVr+mztFJZxWU5ogtqr?=
 =?us-ascii?Q?l+KV3wOwuDza4CMn+NENeOn2Mf95cFEg/TWIdXUM+k67VVnSyM4kQ/g8XmJN?=
 =?us-ascii?Q?GyKWBjTUuA1ymo07XZm12vXoe7qiMTll5WM6/sz9148+YWIu7ev88iLqvGQg?=
 =?us-ascii?Q?sztmjJMrTjhnGB03uMNxTXUO+vbYqjSSzwafDofjapVH86mufz/fcJxj87Iw?=
 =?us-ascii?Q?qQ6GkV6zkAyucLA1P8zJBlwJLt9BS3aiIiWv7FgPvtMnZQTDNurhV62AKVsj?=
 =?us-ascii?Q?Hoip15DE23EOwIe5Nixc4V7f4ZFF0ohfjw/jDqLeIs0jb47/ORPoYvOTYxBe?=
 =?us-ascii?Q?4qasj0ya8bKa1Slo3/TwqA2jztQLiUU6QDnt0pJPub6iFKd6E0CEgsSlhvGo?=
 =?us-ascii?Q?N+HJvFzb62vcc9eBJcnZSLrWtlglR97vhb2aRkEQ+S4M?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9665fcd-c3b9-465b-0eca-08de23df9545
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2025 00:40:33.4443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sAFbVqrd/6wY53SzRdZdBq7M+pWBlb4aQCGz/aLHEDzXour3ERnNo+ZWoTKivIyVActy+OQz5BAwFJUkqUwvbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4942
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

On Fri, Nov 14, 2025 at 04:46:29PM -0300, Gustavo Sousa wrote:
> Quoting Imre Deak (2025-11-12 14:53:47-03:00)
> >On Fri, Nov 07, 2025 at 09:05:40PM -0300, Gustavo Sousa wrote:
> >> Xe3p_LPD has a new feature that allows the driver to allocate at runtime
> >> the DDI (TC ones) port to drive a legacy connection on the Type-C
> >> subsystem.  This allows better resource utilization, because now there
> >> is no need to statically reserve ports for legacy connectors on the
> >> Type-C subsystem.
> >> 
> >> That said, our driver is not yet ready for the dynamic allocation.
> >> Thus, as an incremental step, let's add the logic containing the
> >> required programming sequence for the allocation, but, instead of
> >> selecting the first available port, we try so use the 1:1 mapping
> >> expected by the driver today.
> >> 
> >> Bspec: 68954
> >> Co-developed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> >> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> ---
> >> 
> >> NOTE: This patch is still a WIP. There are some opens to resolve here.
> >> Nevertheless, I'm sending it here for early feedback.
> >> 
> >> For the HIP-index stuff, I have a local refactor started and need to
> >> finish it up and send it.
> >> 
> >> The other open is about concurrent calls to iom_dp_resource_lock().  It
> >> is likely that we need to have a software lock to prevent concurrent
> >> access to IOM_DP_HW_RESOURCE_SEMAPHORE from our driver.
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display_regs.h |  20 ++-
> >>  drivers/gpu/drm/i915/display/intel_tc.c           | 151 +++++++++++++++++++++-
> >>  2 files changed, 169 insertions(+), 2 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> index 89ea0156ee06..0cf7d43ce210 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> @@ -2908,6 +2908,25 @@ enum skl_power_gate {
> >>  #define   DP_PIN_ASSIGNMENT(idx, x)                ((x) << ((idx) * 4))
> >>  /* See enum intel_tc_pin_assignment for the pin assignment field values. */
> >>  
> >> +/*
> >> + * FIXME: There is also a definition for this register in intel_dkl_phy_regs.h.
> >> + * We need to consolidate the definitions.
> >> + */
> >> +#define HIP_INDEX_REG0                                _MMIO(0x1010a0)
> >> +#define   HIP_168_INDEX_MASK                        REG_GENMASK(3, 0)
> >> +#define   HIP_168_IOM_RES_MGMT                        REG_FIELD_PREP(HIP_168_INDEX_MASK, 0x1)
> >> +
> >> +#define IOM_DP_HW_RESOURCE_SEMAPHORE                _MMIO(0x168038)
> >> +#define   IOM_DP_HW_SEMLOCK                        REG_BIT(31)
> >> +#define   IOM_REQUESTOR_ID_MASK                        REG_GENMASK(3, 0)
> >> +#define   IOM_REQUESTOR_ID_DISPLAY_ENGINE        REG_FIELD_PREP(IOM_REQUESTOR_ID_MASK, 0x4)
> >> +
> >> +#define IOM_DP_RESOURCE_MNG                        _MMIO(0x16802c)
> >> +#define   IOM_DDI_CONSUMER_SHIFT(tc_port)        ((tc_port) * 4)
> >> +#define   IOM_DDI_CONSUMER_MASK(tc_port)        (0xf << IOM_DDI_CONSUMER_SHIFT(tc_port))
> >> +#define   IOM_DDI_CONSUMER(tc_port, x)                ((x) << IOM_DDI_CONSUMER_SHIFT(tc_port))
> >> +#define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        IOM_DDI_CONSUMER(tc_port, 0x8 + (tc_port))
> >
> >It would be simpler to define the above without the shift, i.e. as 8 +
> >tc_port.
> 
> You mean something like this?
> 
> #define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        (0x8 + (tc_port))
> 
> ?
> 
> Yeah... Looking at the code, we wouldn't need to shift back when
> defining expected_consumer.

Yes.

> 
> >
> >> +
> >>  #define _TCSS_DDI_STATUS_1                        0x161500
> >>  #define _TCSS_DDI_STATUS_2                        0x161504
> >>  #define TCSS_DDI_STATUS(tc)                        _MMIO(_PICK_EVEN(tc, \
> >> @@ -2946,5 +2965,4 @@ enum skl_power_gate {
> >>  #define   MTL_TRDPRE_MASK                REG_GENMASK(7, 0)
> >>  
> >>  
> >> -
> >>  #endif /* __INTEL_DISPLAY_REGS_H__ */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> >> index 7e17ca018748..3c333999bbe4 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> >> @@ -9,6 +9,7 @@
> >>  
> >>  #include "i915_reg.h"
> >>  #include "intel_atomic.h"
> >> +#include "intel_bios.h"
> >>  #include "intel_cx0_phy_regs.h"
> >>  #include "intel_ddi.h"
> >>  #include "intel_de.h"
> >> @@ -25,6 +26,9 @@
> >>  #include "intel_modeset_lock.h"
> >>  #include "intel_tc.h"
> >>  
> >> +#define IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US        10
> >> +#define IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US        10000
> >
> >The above param names should make it clear how poll_timeout_us() uses
> >them (i.e. stg like sleep vs. timeout instead of lock_timeout vs.
> >retry_timeout), but probably even clearer to just drop the defines and
> >inline the values in the call.
> 
> Ack.  I going with the latter.
> 
> >
> >> +
> >>  enum tc_port_mode {
> >>          TC_PORT_DISCONNECTED,
> >>          TC_PORT_TBT_ALT,
> >> @@ -1200,6 +1204,143 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
> >>          __tc_cold_unblock(tc, domain, tc_cold_wref);
> >>  }
> >>  
> >> +static void iom_res_mgmt_prepare_reg_access(struct intel_display *display)
> >> +{
> >> +        /*
> >> +         * IOM resource management registers live in the 2nd 4KB page of IOM
> >> +         * address space. So we need to configure HIP_INDEX_REG0 with the
> >> +         * correct index.
> >> +         *
> >> +         * FIXME: We need to have this and dekel PHY implementation using a
> >> +         * common abstraction to access registers on the HIP-indexed ranges, and
> >> +         * this function would then be dropped.
> >> +         */
> >> +        intel_de_rmw(display, HIP_INDEX_REG0,
> >> +                     HIP_168_INDEX_MASK, HIP_168_IOM_RES_MGMT);
> >
> >This matches what intel_dkl_phy.c does, that one also taking the
> >required lock around the access. At one point the intel_dkl_phy
> >file/interface could be renamed to intel_tc_reg or similar accordingly.
> 
> I have already started a local series that introduces the "HIP-index
> based registers" abstraction.  I need to go back to finish it up.
> 
> The basic idea is that both intel_dkl_phy.c and this IOM stuff would use
> functions specific to accessing registers behind the HIP-based ranges.

Using intel_hip_reg instead of intel_tc_reg is probably better, but I
still think the current interface should be just renamed, instead of
adding a new interface and making the current
intel_dkl_phy_read/write/rmw() use that new interface.

I went ahead and put the above together now:
https://github.com/ideak/linux/commits/hip-reg

> 
> To give an idea, here is a copy/paste of the kerneldoc I currently have
> in that WIP series:
> 
>   | diff --git a/drivers/gpu/drm/i915/display/intel_hip_idx.c b/drivers/gpu/drm/i915/display/intel_hip_idx.c
>   | new file mode 100644
>   | index 000000000000..ff2492b8275d
>   | --- /dev/null
>   | +++ b/drivers/gpu/drm/i915/display/intel_hip_idx.c
>   | @@ -0,0 +1,110 @@
>   | +// SPDX-License-Identifier: MIT
>   | +/*
>   | + * Copyright (C) 2025 Intel Corporation
>   | + */
>   | +
>   | +/**
>   | + * DOC: Display HIP-indexed register access
>   | + *
>   | + * Display MMIO mapping for offsets in [0x168000,0x16ffff] are governed by
>   | + * configurations in the HIP_INDEX registers provided by the hardware.
>   | + *
>   | + * Usually each of the valid 4KB range in that space will be mapped to some IP
>   | + * block, providing access to registers of that IP. The HIP_INDEX registers
>   | + * expose an 8-bit index value for each 4KB range. Those indices provide a way
>   | + * to access data that is beyond the initial 4KB block provided by the target
>   | + * IP.
>   | + *
>   | + * As an example, say that the range [0x16a000,0x16afff] is mapped to some
>   | + * sub-IP that contains a 8KB register file. To access the initial 4KB of that
>   | + * register file, we would need to set the index respective to
>   | + * [0x16a000,0x16afff] in HIP_INDEX to 0; to access data in the second 4KB
>   | + * window, we would need to set the index to 1.
>   | + *
>   | + * For simple read, write or rmw operations on a single register, the
>   | + * functions intel_hip_idx_reg_read(), intel_hip_idx_reg_write() and
>   | + * intel_hip_idx_reg_rmw() can be used, which will call intel_hip_idx_lock()
>   | + * and intel_hip_idx_unlock() internally.
>   | + *
>   | + * For other scenarios, then it is necessary to wrap the register accesses
>   | + * with explicit calls to intel_hip_idx_lock() and intel_hip_idx_unlock(), and
>   | + * use the MMIO functions provided by intel_de.h. For the latter, the function
>   | + * intel_hip_idx_reg_to_i915_reg() needs to be used in order to provide the
>   | + * correct reg argument to those functions.
>   | + */
>   | (...)
> 
> >
> >> +}
> >> +
> >> +/*
> >> + * FIXME: This function also needs to avoid concurrent accesses from the driver
> >> + * itself, possibly via a software lock.
> >> + */
> >> +static int iom_dp_resource_lock(struct intel_tc_port *tc)
> >> +{
> >> +        struct intel_display *display = to_intel_display(tc->dig_port);
> >> +        u32 val = IOM_DP_HW_SEMLOCK | IOM_REQUESTOR_ID_DISPLAY_ENGINE;
> >> +        int ret;
> >> +
> >> +        iom_res_mgmt_prepare_reg_access(display);
> >> +        ret = poll_timeout_us(intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, val),
> >> +                              (intel_de_read(display, IOM_DP_HW_RESOURCE_SEMAPHORE) & val) == val,
> >
> >This happens to work, but it's more future proof/bspec conformant to
> >properly mask the requestor ID field when reading it back.
> 
> Agreed.
> 
> >
> >> +                              IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US,
> >> +                              IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US, false);
> >> +
> >> +        if (ret)
> >> +                drm_err(display->drm, "Port %s: timeout trying to lock IOM semaphore\n",
> >> +                        tc->port_name);
> >> +
> >> +        return ret;
> >> +}
> >> +
> >> +static void iom_dp_resource_unlock(struct intel_tc_port *tc)
> >> +{
> >> +        struct intel_display *display = to_intel_display(tc->dig_port);
> >> +
> >> +        iom_res_mgmt_prepare_reg_access(display);
> >> +        intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, IOM_REQUESTOR_ID_DISPLAY_ENGINE);
> >> +}
> >> +
> >> +static bool xe3p_tc_iom_allocate_ddi(struct intel_tc_port *tc, bool allocate)
> >> +{
> >> +        struct intel_display *display = to_intel_display(tc->dig_port);
> >> +        struct intel_digital_port *dig_port = tc->dig_port;
> >> +        enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
> >> +        u32 val;
> >> +        u32 consumer;
> >> +        u32 expected_consumer;
> >> +        bool ret;
> >> +
> >> +        if (DISPLAY_VER(display) < 35)
> >> +                return true;
> >> +
> >> +        if (tc->mode != TC_PORT_LEGACY)
> >> +                return true;
> >> +
> >> +        if (!intel_bios_encoder_supports_dyn_port_over_tc(dig_port->base.devdata))
> >
> >dedicated_external is stored separately in dig_port, why the "related"
> >dyn_port_over_tc flag isn't?
> 
> The only reason dedicated_external is stored is because VBT data is
> already freed by the time intel_encoder_is_tc() is called in the driver
> unbind path.  In the future we should fix the VBT lifetime issue in
> order to be able to drop the dedicated_external member of dig_port.
> 
> >
> >> +                return true;
> >> +
> >> +        if (iom_dp_resource_lock(tc))
> >> +                return false;
> >> +
> >> +        val = intel_de_read(display, IOM_DP_RESOURCE_MNG);
> >> +
> >> +        consumer = val & IOM_DDI_CONSUMER_MASK(tc_port);
> >> +        consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
> >> +
> >> +        /*
> >> +         * Bspec instructs to select first available DDI, but our driver is not
> >> +         * ready for such dynamic allocation yet. For now, we force a "static"
> >> +         * allocation: map the physical port (where HPD happens) to the
> >> +         * encoder's DDI (logical TC port, represented by tc_port).
> >> +         */
> >> +        expected_consumer = IOM_DDI_CONSUMER_STATIC_TC(tc_port);
> >> +        expected_consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);

One more thing occured to me: why can't this allocate any free DDI? IOW
does the address of DDI_BUF_CTL (aka DDI_CTL_DE) used for tc_port depend
on which DDI gets allocated (or is there any other dependency on which
DDI got allocated)? AFAICS there is no such dependency and the above
address would be DDI_BUF_CTL(encoder->port) regardless of the allocated
DDI. In that case any free DDI could be allocated here.

> >> +
> >> +        if (allocate) {
> >> +                struct intel_encoder *other_encoder;
> >> +
> >> +                /*
> >> +                 * Check if this encoder's DDI is already allocated for another
> >> +                 * physical port, which could have happened prior to the driver
> >> +                 * taking over (e.g. GOP).
> >> +                 */
> >> +                for_each_intel_encoder(display->drm, other_encoder) {
> >> +                        enum tc_port other_tc_port = intel_encoder_to_tc(other_encoder);
> >> +                        u32 other_consumer;
> >> +
> >> +                        if (tc_port == TC_PORT_NONE || other_tc_port == tc_port)
> >> +                                continue;
> >> +
> >> +                        other_consumer = val & IOM_DDI_CONSUMER_MASK(other_tc_port);
> >> +                        other_consumer >>= IOM_DDI_CONSUMER_SHIFT(other_tc_port);
> >> +                        if (other_consumer == expected_consumer) {
> >> +                                drm_err(display->drm, "Port %s: expected consumer %u already allocated another DDI; IOM_DP_RESOURCE_MNG=0x%08x\n",
> >> +                                        tc->port_name, expected_consumer, val);
> >> +                                ret = false;
> >> +                                goto out_resource_unlock;
> >> +                        }
> >> +                }
> >> +
> >> +                if (consumer == 0) {
> >> +                        /* DDI is free to use, let's allocate it. */
> >> +                        val &= ~IOM_DDI_CONSUMER_MASK(tc_port);
> >> +                        val |= IOM_DDI_CONSUMER(tc_port, expected_consumer);
> >> +                        intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
> >> +                        ret = true;
> >> +                } else if (consumer == expected_consumer) {
> >> +                        /*
> >> +                         * Nothing to do, as the expected "static" DDI allocation is
> >> +                         * already in place.
> >> +                         */
> >> +                        ret = true;
> >> +                } else {
> >> +                        drm_err(display->drm, "Port %s: DDI already allocated for consumer %u; IOM_DP_RESOURCE_MNG=0x%08x\n",
> >> +                                tc->port_name, consumer, val);
> >> +                        ret = false;
> >> +                }
> >> +        } else {
> >> +                drm_WARN_ON(display->drm, consumer != expected_consumer);
> >> +                val &= ~IOM_DDI_CONSUMER_MASK(tc_port);
> >> +                intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
> >> +                ret = true;
> >> +        }
> >> +
> >> +out_resource_unlock:
> >> +        iom_dp_resource_unlock(tc);
> >> +
> >> +        return ret;
> >> +}
> >> +
> >>  static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
> >>  {
> >>          tc->lock_wakeref = tc_cold_block(tc);
> >> @@ -1210,9 +1351,12 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
> >>                  return true;
> >>          }
> >>  
> >> -        if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
> >> +        if (!xe3p_tc_iom_allocate_ddi(tc, true))
> >
> >This doesn't work. A connector registered to userspace must be always
> >functional (except for MST connectors which are dynamically registered).
> >So the DDI allocation and with that connecting the PHY cannot fail here
> >for a legacy connector/PHY. Instead of this the allocation could be
> >moved to happen already in intel_tc_phy_ops::init for now, allocating a
> >DDI for a legacy PHY (intel_tc_port::legacy_port == true) and if that
> >fails also fail the corresponding connector/encoder registration in
> >intel_ddi_init(). The DDI would need to be released by
> >intel_tc_port_cleanup().
> 
> Ah, I see.  Well, I guess for legacy connections, doing your suggestion
> seems fine.
> 
> Is there any power management aspect that we should be aware here? Like,
> some power well being disabled and causing the allocation to be "lost"
> somehow.  Since this thing is in the TCSS, I think no display power
> wells could cause that, right?

It would make sense to me that the allocations are preserved by the
HW/FW across power transitions. If that's not the case then they should
be restored by the driver.

> By the way, I wonder how we would handle things in the future when/if we
> enable the dynamic DDI allocation thing.

In case of a DDI allocation failure, the modeset will still succeed, but
the corresponding port/pipe will not get enabled.

> --
> Gustavo Sousa
> 
> >
> >>                  goto out_unblock_tccold;
> >>  
> >> +        if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
> >> +                goto out_deallocate_ddi;
> >> +
> >>          xelpdp_tc_phy_take_ownership(tc, true);
> >>  
> >>          read_pin_configuration(tc);
> >> @@ -1226,6 +1370,9 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
> >>          xelpdp_tc_phy_take_ownership(tc, false);
> >>          xelpdp_tc_phy_wait_for_tcss_power(tc, false);
> >>  
> >> +out_deallocate_ddi:
> >> +        xe3p_tc_iom_allocate_ddi(tc, false);
> >> +
> >>  out_unblock_tccold:
> >>          tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
> >>  
> >> @@ -1236,6 +1383,8 @@ static void xelpdp_tc_phy_disconnect(struct intel_tc_port *tc)
> >>  {
> >>          switch (tc->mode) {
> >>          case TC_PORT_LEGACY:
> >> +                xe3p_tc_iom_allocate_ddi(tc, false);
> >> +                fallthrough;
> >>          case TC_PORT_DP_ALT:
> >>                  xelpdp_tc_phy_take_ownership(tc, false);
> >>                  xelpdp_tc_phy_enable_tcss_power(tc, false);
> >> 
> >> -- 
> >> 2.51.0
> >>
