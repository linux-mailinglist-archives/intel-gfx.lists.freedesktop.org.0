Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D776113BB
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 15:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 538F010E83D;
	Fri, 28 Oct 2022 13:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 475D510E83D
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 13:57:07 +0000 (UTC)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 29SBNelW011135;
 Fri, 28 Oct 2022 13:55:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=AeCRzNZtBKgGbhIdqvKNxe3P1H98+uap6Ze/nM+XbUg=;
 b=0Ljz0N5kUCERnKaBruwO1T40ZTOAU6UhNHli9JG7jjIFoc95KewW2qci4wcztnyJeugR
 coEWXruECj+LGCo7938lvZNGc+pUzgXkYirByvzzo/gvjYMqEkLn9oOmScSO5y2e64a0
 TqRiS1bSXUFJ1JydPrqbFOyT3qlwQjRGm5tfQr2JJK+zrd0nhM128Fdl5vPcyGcpM6mv
 +orRNNU7GQBPw8m0iC0+yndl7gbjIVlfHD08Slg9WsBd0xvkukUHcf9UuwABCaEX45F9
 xyg3fPGfnoJWe3gYjARuW4691nSKlj8f2tJNFQc+VnzMsgQFs3sY8He4OUlyU2CTf5l/ Rg== 
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3kfahedcvk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Oct 2022 13:55:39 +0000
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5)
 with ESMTP id 29SDLgwQ012085; Fri, 28 Oct 2022 13:55:37 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com
 (mail-bn1nam07lp2046.outbound.protection.outlook.com [104.47.51.46])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3kfags444m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Oct 2022 13:55:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GKXmzfYKUSxv0Ojf47aPTAZfOIHjQx/7pEQd7VRJplQujs5zK0fw9sOGJsQPkHNmjg2lSmsGqK4FVNCZoXD1WbrTu74bLB90SL3mKyy+ZWkZRhNtFe3u1Ze306GJuLlZHX7i9D5Xi3oGDSEFcJHQbdmNDmwteA4qeDE0fgE25MlzrwF2xZF16hqDddC9KpXOM+rb6Jmn9U3OuOf5ti4/rXlwaEKunvGfN3Bx7XRI5ZrLfWj40N1IKJhaUNErYZNcXOZ8mydr8k/1ykEn7zUcRV8r7Dsxdf6Uhij2XzCBp+ydcPBE0LbXlpX9pnTBGmlT10oI4pHNEvb3ULgTOxbH1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AeCRzNZtBKgGbhIdqvKNxe3P1H98+uap6Ze/nM+XbUg=;
 b=SJc1Fm+z5Pt6AkRqkNwQd5DDS1EqOqc3T2x6sBALMXQIWw011Z5QgMP8PPtEoeVDFgubKxpmrlk2kBev1VnPrKfEKZ+98RUpBhQL9T0ZAkzk0FBCt6uq6t9hVcGfp662cr5heUqkES0wpmk1khW/Lqn2xD4lprwrtROORcr20dJ7QQX5uci5PGiVsayd374R6v4ecO/3yzpjFBwLlulHJGGxAxStQ7Qa0ruILwNRVrDRn6TYU0XNrIhubcdNhawNiASyvPdURTPXYK1B1nB/mldyNzwB5tbPgeFdoe40p9MpMvu28SyC7en3+PEJxYltjRXIMX+oFqsmvaVO9FwM7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AeCRzNZtBKgGbhIdqvKNxe3P1H98+uap6Ze/nM+XbUg=;
 b=oZjNsmtGywNoh6dGoN7QvPJ7f+hDIU1EHs/EWBwBoDCv/AFAa50r+mM515hmcZLtUSJKcyqsDarMRq7Sfc0nmLDJdVJKAMvxLsYCkYZv2RuP0qTX3HKSOC0EeQFTEBpFz6c7HHcC6qpT7t9QTQF2rwzBWpm1N75fwapo8ighKTI=
Received: from SN6PR10MB3022.namprd10.prod.outlook.com (2603:10b6:805:d8::25)
 by IA1PR10MB6267.namprd10.prod.outlook.com (2603:10b6:208:3a1::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Fri, 28 Oct
 2022 13:55:36 +0000
Received: from SN6PR10MB3022.namprd10.prod.outlook.com
 ([fe80::f378:f1d0:796a:55a1]) by SN6PR10MB3022.namprd10.prod.outlook.com
 ([fe80::f378:f1d0:796a:55a1%3]) with mapi id 15.20.5769.015; Fri, 28 Oct 2022
 13:55:35 +0000
From: Liam Howlett <liam.howlett@oracle.com>
To: Matthew Auld <matthew.auld@intel.com>
Thread-Topic: [PATCH v2] drm/i915/userptr: restore probe_range behaviour
Thread-Index: AQHY6s4qXY/HrmUvZUKD86s9+P2Pha4j1EAA
Date: Fri, 28 Oct 2022 13:55:35 +0000
Message-ID: <20221028135526.fcmg2yaefrza3yux@revolver>
References: <20221028130635.465839-1-matthew.auld@intel.com>
In-Reply-To: <20221028130635.465839-1-matthew.auld@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR10MB3022:EE_|IA1PR10MB6267:EE_
x-ms-office365-filtering-correlation-id: c2351ad7-0778-4c60-5d9c-08dab8ec1695
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rYPueJI6NmtKj5krWmOvY9jrfUHU4TqwNmr44D+k5ixWdhoLAc2jOtWEIZMvTbqhoYGHiQf7qGwzWtpBwYxPByhGLHM1BDyH1TozRV7/YSxt4VVMzEfgIl9QUU6oL5DDcy5xAUD6FhjvgdSZdFn1BO7xC0xSliHO+9dxxCYGPqf2lvOODqxI2cPj1DfB5/sAtMTSSWuc+lpakDVfqvbtNLW+EkMwB0WsEHLuNwdtD+vI9m9cLqnvteXT8y0hc//yGg0DwkTkIdKh25jUlHPrsqud1k3jvWlas/iXEQDIwEL4fz5DA5ZCOuRnYsS3uxu4iSXIF0t41KFLfkxE81sd1fRLdu/UQo44cODxGUxxQtLCXq2Lpo/x/cX4eYYHw/s0dhD0CRMuK61XkEzVVzqaGb1m2z/xZxjEMx22W7HUGvygQR0+kj6INZAYXwV511TZh4Xyx43QCUxzYyjmRJiligBkyzDri3UR2LIzLPYpfAxyvSkbTFhAoLwbcDZnpVhrDDmD6u/Eo7otTvy9KWN7iyQkUgQ+RS7/FvNpt0IUIm8cPYhLAgXVPJmAng/JBM2gD7izBbRW7ZJ8VbKx0PO4eiBtj6uGMLTMVGxncgfDMyeeXr6ttXeOM6gnu2J6P/0ddgC6xtxt7uTmLnl20cG7yyUHjq5UUiAqZbwQ0pjhncxNDAMzQKMM+wXkdiNa03AC7qFcxlYEGnz+TfFu+oKnbg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR10MB3022.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(376002)(346002)(39860400002)(366004)(396003)(451199015)(83380400001)(33716001)(38070700005)(86362001)(38100700002)(122000001)(6916009)(316002)(91956017)(6506007)(966005)(71200400001)(6486002)(478600001)(54906003)(8936002)(186003)(5660300002)(1076003)(2906002)(44832011)(8676002)(6512007)(4326008)(66946007)(66446008)(66556008)(9686003)(66476007)(76116006)(26005)(64756008)(41300700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wBkl1aqeX/DOqVmw0AWprAKKHm254PPAdk/uvMh6I8yWO9A/zXjyg7rie1AQ?=
 =?us-ascii?Q?xEGTlVVHNHO2hDWqGGGG12isP9LS6deRqh/wCr1CWfZneUbAARvQ+MrQAPpP?=
 =?us-ascii?Q?H+89CYNCwzYVkGflO/DrNbMuFwm0urIVO3pZbMY7AXSXdE4mmV2u82eVL40R?=
 =?us-ascii?Q?CFy3IKnoKiIUpcCnljxReBHkPYs34P0VUOnMvUVazM0AfU/XJNFopwNyGhpj?=
 =?us-ascii?Q?/J7MB0UOrbAg08++oeoeBp+fxrvVp3Kl4XgJA8CNyxEoaab31ldL+pcMCUuo?=
 =?us-ascii?Q?o6jmWWmyXGL01FfnWB8XMKMClH0EnExudtpQMEzSXbJNCI8tX8/706Owzms6?=
 =?us-ascii?Q?pwNjw6/HLbNYhKnCAA3UcJLQtiJV19awxCIdGvHTfpm2+wQVz2TMJogPFteW?=
 =?us-ascii?Q?88eBrxAwKME33zS2vqxCtvLXkb7YZH5mYUFP1iyF9RfUkk+MWeuVsnznyA0X?=
 =?us-ascii?Q?goCqUFKRVqnRLn720sMH83AbJej2r2S9/kDxrU+MtKtQYLGxV9ALnC3Vgbt9?=
 =?us-ascii?Q?JmxSWJ9naW67ZMw3TJxxGg0pz3SEXh9mOWDYoYJtxplWJ4+m2kHLKZGoadhs?=
 =?us-ascii?Q?kJpMMEpsrd/+g3GuGBG9utdsbFARFZO8SuuRu+5sBvAKgmKz/Y2Uu9hxwjLR?=
 =?us-ascii?Q?k1Q80OQLGZJ5teTkmkHH1shZEdmr/Md5D78F3LFP/oBLIsx9YtfJMJ5ojIp+?=
 =?us-ascii?Q?60XIi1jPjSu8zd7i8qac8e8CSswQ6Md2CPGbiJTfXOVVHmGoYpQJK2h5izKb?=
 =?us-ascii?Q?77JBXJ92nGZOb86NcWKUKlyMa91ItkRCz4rUA48e50nVVUdr7vsJMMlD0i1d?=
 =?us-ascii?Q?fd+i1mDbauXqKcLTcCXbxWV1GBpmdF3QsquA2Cs5IFFNV0a/IqlY3iQVCyiS?=
 =?us-ascii?Q?6ZswRKN5+PZDbZh2Q9lBOkl6UXSrGsSJngnX6MF02Ay83XBmYA5BcVXJ9Sbw?=
 =?us-ascii?Q?W3FjBeaqaa4/AwSvbWPjbuokDB5g8uNMPFfFI1e3exRv4sNrFmsD7neQ96id?=
 =?us-ascii?Q?3G/Y1UrihTpFnlLPoymDBTtVW9wcCz7bLEspB1G+OrwxflCEaDRDYQceL3R1?=
 =?us-ascii?Q?+Is+OZYXmSVH2sfr6KBzIXRg/mgn/Uja65KbOO1zcI/FNzLVvSB/7fugKwg+?=
 =?us-ascii?Q?By3Liy2rrs5NXMJfi2Dw4l3Xf31Xw/y+YVpquNWSzyv6swFfEYw6mqYAG3Ar?=
 =?us-ascii?Q?a8brMPhyMfiFiUi6FdkR02ujs4ES6SDRU8DtBOXtMeNz3pRLugH707Vydp4e?=
 =?us-ascii?Q?B7RgyXNJbgb7mJ/8U+CzI95ZP0S8dSJEpW1lU6qXkLXlCEpuQX44ge3M62lx?=
 =?us-ascii?Q?ccPpnWR/Sxzo3DL/S8cK8hP4aK5Lspd6ln8S4MAVnQFa0PZfeDNHkRhYUACi?=
 =?us-ascii?Q?hORR/jQhS73+CzCXnaDRV+hZ+owtDrXnJDwwl52shhaQmKgXvUYRYVrz9C90?=
 =?us-ascii?Q?0ikBb8Gf9XHZy4ipr7YzbgHheTYklfKVlFDTiqB6fHOYyBc1A78SE5nZA0/n?=
 =?us-ascii?Q?t9m0U2/poM53SqipywCy7SSehjwPez3IL//q2knI5ozGHvTlFmsbkCFd4OWM?=
 =?us-ascii?Q?Tq/nhVO5ITr5wp3yVGPfiCQFLvdmaLToEEz7h/tJBWR3Y2obnfbi2ptcYZyN?=
 =?us-ascii?Q?qg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <42B4918990F19741927932CDD3390F8C@namprd10.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR10MB3022.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2351ad7-0778-4c60-5d9c-08dab8ec1695
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2022 13:55:35.6401 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OwRdJ1nWwyOdfiYWA/yEOlB4Cv7beEp4P/QOWI8X/oDavDuMkquxbqHaM1lL0IDL5qBn+NDuem1GvRAR2EmwZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6267
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-28_07,2022-10-27_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 phishscore=0
 adultscore=0 malwarescore=0 mlxscore=0 suspectscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2210280086
X-Proofpoint-GUID: vYDRj6u0LhgyJMeFil-HspNDOWM8V1Y2
X-Proofpoint-ORIG-GUID: vYDRj6u0LhgyJMeFil-HspNDOWM8V1Y2
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/userptr: restore probe_range
 behaviour
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
Cc: Yu Zhao <yuzhao@google.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 kernel test robot <oliver.sang@intel.com>, Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

* Matthew Auld <matthew.auld@intel.com> [221028 09:07]:
> The conversion looks harmless, however the addr value is updated inside
> the loop with the previous vm_end, which then incorrectly leads to
> for_each_vma_range() iterating over stuff outside the range we care
> about. Fix this by storing the end value separately. Also fix the case
> where the range doesn't intersect with any vma, or if the vma itself
> doesn't extend the entire range, which must mean we have hole at the
> end. Both should result in an error, as per the previous behaviour.
>=20
> v2: Fix the cases where the range is empty, or if there's a hole at
> the end of the range
>=20

Reviewed-by: Liam R. Howlett <Liam.Howlett@oracle.com>

> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7247
> Testcase: igt@gem_userptr_blits@probe
> Fixes: f683b9d61319 ("i915: use the VMA iterator")
> Reported-by: kernel test robot <oliver.sang@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> Cc: Liam R. Howlett <Liam.Howlett@Oracle.com>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Yu Zhao <yuzhao@google.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_userptr.c
> index 1b1a22716722..ca7a388ba2bf 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -427,9 +427,10 @@ probe_range(struct mm_struct *mm, unsigned long addr=
, unsigned long len)
>  {
>  	VMA_ITERATOR(vmi, mm, addr);
>  	struct vm_area_struct *vma;
> +	unsigned long end =3D addr + len;
> =20
>  	mmap_read_lock(mm);
> -	for_each_vma_range(vmi, vma, addr + len) {
> +	for_each_vma_range(vmi, vma, end) {
>  		/* Check for holes, note that we also update the addr below */
>  		if (vma->vm_start > addr)
>  			break;
> @@ -441,7 +442,7 @@ probe_range(struct mm_struct *mm, unsigned long addr,=
 unsigned long len)
>  	}
>  	mmap_read_unlock(mm);
> =20
> -	if (vma)
> +	if (vma || addr < end)
>  		return -EFAULT;
>  	return 0;
>  }
> --=20
> 2.37.3
> =
