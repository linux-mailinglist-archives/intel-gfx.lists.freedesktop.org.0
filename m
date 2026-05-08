Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCqGC9ri/WlvkQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:19:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FB64F6EE5
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:19:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F4710F4B1;
	Fri,  8 May 2026 13:19:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IJzXROo6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3751D10E308;
 Fri,  8 May 2026 13:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778246357; x=1809782357;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=a1NSdC1+AemhwNtrlaF0E0sPReSYUMrIMyVRDHrKJiA=;
 b=IJzXROo66HfvDiW9lXEvzFcCH7Be9mgyXUay449vOhQHdD9r1CYeikIa
 vFwIDRB1B+kU7CjLBB3D/dSQZud61/SlaGoqVnAKnsxDOcvp4Jt2jB6AY
 Ou+rJdOtiaDuWQRvvSDmMjmK77k9FzN7VDkPef0ewQw1tvsgjgI2OYajt
 dB5g0W/xYaWnmg3qRKkSZtQsg56zZC9uB6Lov3pt/zRv1Jq/q0iXyrVAp
 i1dUpJn3em+gdAh5ebgKOn275EN2P9SuPkTB8nI3cxLGOLDn7FQueG2FI
 6BVqgv2XjaveQOle8bEZXXESgNJr6U+69KXYWA0KNbr6ND2rICdNdVK8c Q==;
X-CSE-ConnectionGUID: on+3CuNjSCeI5pdjlk1tbQ==
X-CSE-MsgGUID: DKcq9avBTjOvTJP3hmuVMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="89802059"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89802059"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:19:16 -0700
X-CSE-ConnectionGUID: C77le9m9TRymzb5MywHR9Q==
X-CSE-MsgGUID: X10knzFhSMevgY796UC01Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="235783804"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:19:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:19:15 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 06:19:15 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.26) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:19:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cTgoFhps2ROawKJH6vSXyxYkgJoNey3Zod+Kay43v8oinnLc8e4+srVx+f41YOsROd/FheFHM72cfFxffmiRZQo8Q9PYhk/wQQHcLWtS08n8BlU9+lQFaakhMNuF3oQPWUazSElalQEZ6dprbjgRmeaULd3tEFJPGYVUynhrODgF3sEG1GiBAzxDxIls/9UdpkE7dYrDEP5NFTysMh7MjXkFB1XydAJCFlyDI6vASv0DmDbzs8uwSTFDgJAeqAmMrBTXB0GRBCJfeTnf3D2vOEpIm1Su5QJ5S/+4L+Q7Q0yZjtzB43/QTaLv2XE5wop25+ILPiUT8KDoqB3I3gQsPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5wzrQZCKVB6sCMSA2Vtf/hpa6P/31oPluKsvAWFAVLs=;
 b=Fsl/rC5THbJimbFTUiG26iBezJw9xuFaX4F0Me5Yay1Zxi4XNrrq1bn5nIwoFkmpLNm1wa1tIwlRXo/R0Ce6nvssgTIflXUnNRnEPL6tMXYT6ddWfphhQcP9rZvaqbFhoRG3rxyGh8tOTgx6BwKcHr1DcYnWUscF960qPaHOXtkWEny4XsgxdLlBt6WnXNpVQYEgmEoToHmStJ8k0m7+DbiovWRpROAnLC1h8Dr6TVSBDoZqaQ9QLK0hrWp1kx3DF/RQ5osXKnlTOhWC7E3nyn+vd7kwmk1cozZCLFB+PpC8Yb/wTFVj0lhxdeKSwHkDkvljkuwfez7IlG28GKaZ5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by LV3PR11MB8743.namprd11.prod.outlook.com (2603:10b6:408:20e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.20; Fri, 8 May
 2026 13:19:05 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 13:19:05 +0000
Date: Fri, 8 May 2026 09:19:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <linux-doc@vger.kernel.org>, Matthew Brost
 <matthew.brost@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <tursulin@ursulin.net>
Subject: Re: [PATCH 3/3] Documentation/gpu: add remaining DOC: comments to
 Intel display documentation
Message-ID: <af3ixP5pKOwxM9Jj@intel.com>
References: <cover.1778235406.git.jani.nikula@intel.com>
 <589c46cf9a46763f4fbb7e1756656e6d71ba1431.1778235406.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <589c46cf9a46763f4fbb7e1756656e6d71ba1431.1778235406.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR08CA0040.namprd08.prod.outlook.com
 (2603:10b6:a03:117::17) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|LV3PR11MB8743:EE_
X-MS-Office365-Filtering-Correlation-Id: 00558d66-f37d-49d5-4ad6-08dead0460cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: SaIR7TH4l0dFjr+e6WYRP6pl6iOILlfk075YmS7MUCjIikFOA/tDyX7F2A7yN8BOB0r3B223elsC3fU/Rv+kSvfK3QnZe77gA0ZLl9wX6Dce/bM8CXm4a/CcZxWbnIf3qIywKeqwCnRUGt+wgjALErLWU3W2apz8OTFrXadAnCfo1yfYBwDTI1EFM2eyHBCd7UD3KCpbwFr8TFOT3ycG1+hIdGSOB/xN8waHQfMoyJoGQ0XkSHjLtHleZezfvRtQssVU6JuiYDgRGrp4a1KBH+KPrsfgqFAAVT50Tpd5REQZMTmJCNja8Lh1YuRbI8Trmsolg8OSZPXlFVgIWD79lW02la7sS0amdEXilUtcBkS/HRQIjKA0ykl/PwWh1/l1I/d/l6Y3NvgPc7kHTmW2FNeBfR2p23EaYzmk+pTqZt4asAWBeKqZVTMLMsjSZA8sZpNUx20+7Nw1PqwH7f8vO/0wuE496j2Ig91vYn8DADN2K9SXlc5wrJxKboiVEUlyXDR+i2z8GXnARSjT+Josdm7eYKd0AkIc+PNheoYTOJSIExlaHxah8jBiwjksWCFECL3duGzY/9PezXwd775WIY0rXnQhcOOcO9QOAI2UohcvGRwEvMVL1iTTq/HhcHMU/s4U/avfthyUw7cGD9o/YayL9bZ8mfqnQIw75jYlcuT9wKcDdhlforXIBBzTvVsE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?PSI7Nn+41KDXZvSWn/O/lj4zfMf9nkf4Rfm45dXYM81eVs6o6Yt9uAthzm?=
 =?iso-8859-1?Q?EwjtDa4GhGXKNQrindlzpXSjK0VDijwWgGM2hLGGSBdIVTb/MFMH51WcDV?=
 =?iso-8859-1?Q?tU1dbrYn6SvNm62QUYNd6cf7ItQomuEgMjcnsxo7WJgmULMurFM8r8QdwX?=
 =?iso-8859-1?Q?5dPZ03/Jt73Zx0Cc/wUL8Q4EB2rVQ+iLFf7K6c0TwMuq4DNOIRWQz1aiVp?=
 =?iso-8859-1?Q?rsHYu/e2TZKRJg6jvnaGSPF37EwIvNj1HnMlXtUHHoQikV3MkY693sXZ13?=
 =?iso-8859-1?Q?D5bjtXUyqE1F3y2UXjEw7eS+vEyWtblKTej1m/6z2egZl1Z2oCg8rtDsJ5?=
 =?iso-8859-1?Q?3k2rE3paZwW9UnsToxIRDhLdetmBNsszC1mroavzU6XffFNT+8xbttgGKp?=
 =?iso-8859-1?Q?hNAs4S6cT+PBD4wTgsQX9iPSbIrvfiHRpk0A0Qyap7zQUXLJIMdbaw6uBG?=
 =?iso-8859-1?Q?iRpfEFHBl6kkOgZ94YAkH8ddU+e8wt5lQW0mNnkW0xmS8E0KFvNrwcXxn5?=
 =?iso-8859-1?Q?bk8vyqjKeGjhldDw5DD2Ip2895G3BZjXaWCK3JCLRzxEPC5UUg83PYg4ZF?=
 =?iso-8859-1?Q?iGV4GnT8RK6KuPWpVhRRFLpb7V5BYT/dDBUblhjZr1JTTpF0TiImBzVF/n?=
 =?iso-8859-1?Q?8K29SQvgyy0YCimQnUpUV7XRHrLkHa9/sDHQsuu6J7ODHCEGm4QRBS7pPK?=
 =?iso-8859-1?Q?NW2HZyGSS9PToyWd5fJTdNut//bDuY99ICjEuKISRfZWBvc6iDpfqZvdZM?=
 =?iso-8859-1?Q?e8fSk7okPA67BF9gYNkmEvvDKyi9bL2Eoi2Nv1fBIhoRBJx1JdQjXu57VK?=
 =?iso-8859-1?Q?d4G2bN1PQIDiZuKmSkpEeh4YnuEtaGf1Iz+Bq5drkUBU0NwWyqUVsxTdvG?=
 =?iso-8859-1?Q?vlRd2Db0Ie1LHTl9rlN0HN9j9mC+PR+feopEI/90eey+TLenwUnWXYHthO?=
 =?iso-8859-1?Q?QIrEVu0eE7bHxDl1PMMDNmBRNt+pZveGJLjg+OlXnaKCY7ZsyQq0MnA/Px?=
 =?iso-8859-1?Q?Jp8rqZfJf0v5bQ6xDNc+0MMk6STcT1XtQss6hPn3g6gH9LkKbOy2OySQjg?=
 =?iso-8859-1?Q?NX1Qbc1qhHJ9VLhMTgiGFt2xAuf6KPmVpQwYtEDOHCl9qwMSEjM6AR5iO0?=
 =?iso-8859-1?Q?Ke7HlKQWxxdegiRgOJV46Za6mMWHi0crjQgguYNMOoOXtEcSaXQFbn8Bmc?=
 =?iso-8859-1?Q?J4d3toTEARDVehj0h0I8i+nDMHQcv/3hQ/GuY6eWtjyan2UjOVjnOHynQp?=
 =?iso-8859-1?Q?rLs5bIeD+l7OJN3mqEXn1WR1521hyQY2qf6MgFvmhATLuGN1bfnPUf3ddR?=
 =?iso-8859-1?Q?wT8up84pH5ciZf640ZQzPv4HP7BBEBDMUQducEr7gr+F/7hmNRpMY9akD6?=
 =?iso-8859-1?Q?F59w3TikGqX207VEelrsm2c53etd5a+oOzXwx/ohMMaUGc05HtPZVbpfbl?=
 =?iso-8859-1?Q?BAJfOuUO75onyExcFw/7fY7x2yvgGem5bbCa/qza3DSIlwzKdwfLRmBsQU?=
 =?iso-8859-1?Q?cP+7Z4wlOgw7oEcF3Fjj0TxN5TaRuLnsq/c4aJ5w1LrLjYCkVAZVT2yGRD?=
 =?iso-8859-1?Q?15BNspN/1SR9yUGb1tmhdDABhPmZIYUAba/wOuNw49HmwDb3IW2P/3d0HX?=
 =?iso-8859-1?Q?ASDnnGMshDXwhcqiEppFzffuzhWx5dyxrtijT2N6khqqv12n0JHIJ/7Fy7?=
 =?iso-8859-1?Q?nD44w8NJjfZVxl/h8z0u6+IatMrxxNeVZUib4PskX5jJB+u8fkZcM0/LJ7?=
 =?iso-8859-1?Q?RfMFJeUxbfMnkmqkhYEyV0UfPLCNbb2eGtd3syvwhXUZxugViQIE/0Gnuv?=
 =?iso-8859-1?Q?ANWRL2PI7Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: OYbr5q+oLCWoFabsyyFMWygOTrodt9GIYaqgwr6P0M+WtChmeYHxns/E4L8AjYbGemeZh249QfGz3oxC8WQZ+yG4fGmol3w0sdpNdQZ06uFidfzJ//BoV04bWD9X9oCg52fw0twqC1kg6BZKV81U5D0g9djR6FJ1mTUg3PICmuS/rrEX1AfzxcoJrajC/gqRhn3suaXneYMaXABbCio4JAxV/HfmCuHcrsrhpeFYhxHc+4Z6Vp2Mf4ThxJOYb7oiLnAIZ3OPgTEskMLc8t8RlJdHFDK3hvMyh0QTztDz3kSnOMHEqaBSbaNxNtOdL0M02jg0RroVRrGWEMLSxfWCOg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 00558d66-f37d-49d5-4ad6-08dead0460cb
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 13:19:05.0670 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S1rnPVnYwBFJSDO64AsE8z9q6xTE9zFyo8EsfJ9FM1QSMaWtZE1HpwA/9pPNqLRwyffnGAnlEO85DkLBNKzDuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8743
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
X-Rspamd-Queue-Id: 19FB64F6EE5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 01:20:49PM +0300, Jani Nikula wrote:
> Not all of the overview DOC: comments in the display driver are
> incorporated into the documentation. Add the missing ones, including
> some function documentation.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  Documentation/gpu/intel-display/atomic.rst   | 11 +++++++++++
>  Documentation/gpu/intel-display/casf.rst     |  8 ++++++++
>  Documentation/gpu/intel-display/cmtg.rst     |  8 ++++++++
>  Documentation/gpu/intel-display/index.rst    |  4 ++++
>  Documentation/gpu/intel-display/snps-phy.rst |  8 ++++++++
>  5 files changed, 39 insertions(+)
>  create mode 100644 Documentation/gpu/intel-display/atomic.rst
>  create mode 100644 Documentation/gpu/intel-display/casf.rst
>  create mode 100644 Documentation/gpu/intel-display/cmtg.rst
>  create mode 100644 Documentation/gpu/intel-display/snps-phy.rst
> 
> diff --git a/Documentation/gpu/intel-display/atomic.rst b/Documentation/gpu/intel-display/atomic.rst
> new file mode 100644
> index 000000000000..43a473181e7a
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/atomic.rst
> @@ -0,0 +1,11 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Atomic Modeset Support
> +======================
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_atomic.c
> +   :doc: atomic modeset support
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_atomic.c
> +   :internal:

I believe they key functions on the other files below also deserves this
kind of doc. But I know, future work not related to this patch. ;)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> diff --git a/Documentation/gpu/intel-display/casf.rst b/Documentation/gpu/intel-display/casf.rst
> new file mode 100644
> index 000000000000..406778ccd94c
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/casf.rst
> @@ -0,0 +1,8 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Content Adaptive Sharpness Filter (CASF)
> +========================================
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_casf.c
> +   :doc: Content Adaptive Sharpness Filter (CASF)
> diff --git a/Documentation/gpu/intel-display/cmtg.rst b/Documentation/gpu/intel-display/cmtg.rst
> new file mode 100644
> index 000000000000..04edd0bd165d
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/cmtg.rst
> @@ -0,0 +1,8 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Common Primary Timing Generator (CMTG)
> +======================================
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_cmtg.c
> +   :doc: Common Primary Timing Generator (CMTG)
> diff --git a/Documentation/gpu/intel-display/index.rst b/Documentation/gpu/intel-display/index.rst
> index 8d40363b8f90..01c3d1e576b7 100644
> --- a/Documentation/gpu/intel-display/index.rst
> +++ b/Documentation/gpu/intel-display/index.rst
> @@ -24,8 +24,11 @@ driver. The display driver isn't an independent driver in that sense.
>     :caption: Detailed display topics
>  
>     async-flip
> +   atomic
>     audio
> +   casf
>     cdclk
> +   cmtg
>     dmc
>     dpio
>     dpll
> @@ -37,4 +40,5 @@ driver. The display driver isn't an independent driver in that sense.
>     hotplug
>     plane
>     psr
> +   snps-phy
>     vbt
> diff --git a/Documentation/gpu/intel-display/snps-phy.rst b/Documentation/gpu/intel-display/snps-phy.rst
> new file mode 100644
> index 000000000000..c9e333fa7f62
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/snps-phy.rst
> @@ -0,0 +1,8 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Synopsis PHY support
> +====================
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_snps_phy.c
> +   :doc: Synopsis PHY support
> -- 
> 2.47.3
> 
