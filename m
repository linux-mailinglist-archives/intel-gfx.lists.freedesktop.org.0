Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FC52AA756
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Nov 2020 18:58:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAAB56E107;
	Sat,  7 Nov 2020 17:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com
 [148.163.143.35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ADFA6E107;
 Sat,  7 Nov 2020 17:58:13 +0000 (UTC)
Received: from pps.filterd (m0134424.ppops.net [127.0.0.1])
 by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0A7HpUIT030820; Sat, 7 Nov 2020 17:57:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com;
 h=date : from : to : cc :
 subject : message-id : reply-to : references : content-type : in-reply-to
 : mime-version; s=pps0720;
 bh=19AOhJSg8287gbPV9wDB4l5dczCLNW+uqRNvFL42X6U=;
 b=bigOhbIaNPut4w8m9qKIQWF7/d+s3mOe5gd3a+QTMpO9bczduiadQLGoik5NmVu61jT9
 Hvrv/wsJoD8DNgSzPdP7IWBJjzibeZzQF7bw5Y8kS0jmlXCPMyC+dMaZk54aXtfTfLr2
 B0KNJDg5R+W6M1nQ3Omo8Gj+BApLmqfP17OaiHRkXrKNvyS0MDbYeelwsM4lBqZFYfS3
 QBwUaJ1sJuP1hbyQ4KRvT4t2viCotSyHmUm3uXHGsbyWWzk79UJtBOvebZ6zkaJwa7Fl
 x7TWo7W4xL0X4yo0lQF8Z9chviFzJNWY68XJ8P9Jibk5ids/kDaAMk25O49fkH+tCjKc TQ== 
Received: from g2t2354.austin.hpe.com (g2t2354.austin.hpe.com [15.233.44.27])
 by mx0b-002e3701.pphosted.com with ESMTP id 34nmm4awuf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 07 Nov 2020 17:57:57 +0000
Received: from g2t2360.austin.hpecorp.net (g2t2360.austin.hpecorp.net
 [16.196.225.135])
 by g2t2354.austin.hpe.com (Postfix) with ESMTP id 2F66081;
 Sat,  7 Nov 2020 17:57:56 +0000 (UTC)
Received: from rfwz62 (rfwz62.americas.hpqcorp.net [10.33.237.8])
 by g2t2360.austin.hpecorp.net (Postfix) with ESMTP id 513553A;
 Sat,  7 Nov 2020 17:57:54 +0000 (UTC)
Date: Sat, 7 Nov 2020 10:57:54 -0700
From: rwright@hpe.com
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20201107175754.GA13311@rfwz62>
References: <20201101174132.10513-1-rwright@hpe.com>
 <8cdf0dd0-2a2f-bae9-71ea-89a88fdb14a5@redhat.com>
 <20201102195710.GA12790@rfwz62>
Content-Disposition: inline
In-Reply-To: <20201102195710.GA12790@rfwz62>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312, 18.0.737
 definitions=2020-11-07_09:2020-11-05,
 2020-11-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 bulkscore=0 adultscore=0 phishscore=0 mlxlogscore=690 spamscore=0
 clxscore=1015 priorityscore=1501 suspectscore=0 impostorscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011070129
Subject: Re: [Intel-gfx] [PATCH v3 0/3] Reduce context clear batch size to
 avoid gpu hang
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
Reply-To: rwright@hpe.com
Cc: dri-devel@lists.freedesktop.org, airlied@linux.ie,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 christian.koenig@amd.com, linux-media@vger.kernel.org, matthew.auld@intel.com,
 chris@chris-wilson.co.uk, sumit.semwal@linaro.org, wambui.karugax@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 02, 2020 at 12:57:10PM -0700, rwright@hpe.com wrote:
> On Mon, Nov 02, 2020 at 10:48:54AM +0100, Hans de Goede wrote:
> > Hi,
> > 
> ...
> That said, if the i915 maintainers respond in favor of the simpler
> unconditional reduction of the batch size, I will be glad to
> propose a much simpler version of my patch.
> ...

I received a suggestion from Mika Kuoppala to test 
https://patchwork.freedesktop.org/patch/399174/?series=83531&rev=1 as a
solution for the GPU hang I observed, and the test was successful.
I recommend this patch as a better approch than my own, as it 
addresses more general cases without introducing a new quirk.

--
Randy Wright            Usmail: Hewlett Packard Enterprise
Email: rwright@hpe.com          Servers Linux Enablement
Phone: (970) 898-0998           3404 E. Harmony Rd, Mailstop 36
                                Fort Collins, CO 80528-9599 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
