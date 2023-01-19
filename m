Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B936732E0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 08:47:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 803D410E8C8;
	Thu, 19 Jan 2023 07:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 012DC10E8C8;
 Thu, 19 Jan 2023 07:47:47 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 39F8D61B97;
 Thu, 19 Jan 2023 07:47:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CBC7C433EF;
 Thu, 19 Jan 2023 07:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674114466;
 bh=7WOYOeaEZiuH7oZbvdZ78RcbdrMFESiP3WNivPABNbk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hioSth933gwVfFT0jpHFp1vNYvhnzakGWtxj+rfD0ZZQ1LG7wZFpIy6HRa1hgG2Ko
 6sL0XQf8ppr8LYQ/MFO0wHfrB+3zvGCqYnZp+gVKxm1MOqHT+5ZsAp8vO5/9Fob7hq
 p2B9Z75k4dYSGIBJQxu/yq1eId5Z22kEpR/iQuF+OoLmGkXge1CtGIc9jKrjPd+mzC
 H8wGzt9gAxPXVzO8SyETvjlP+EwsFjQgULiKaZ9Suk1uzRV1FGuLyP84v+/Rg/+6e5
 YwaYUrMn7A+aRoH0jyMWJl5cboFRYThnT3Oifx/lSOjwHmqQ6uKsM+E2d945mCin3l
 C80DWQA+WmJuA==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan@kernel.org>)
 id 1pIPee-0005IE-Hm; Thu, 19 Jan 2023 08:48:12 +0100
Date: Thu, 19 Jan 2023 08:48:12 +0100
From: Johan Hovold <johan@kernel.org>
To: Mark Yacoub <markyacoub@chromium.org>
Message-ID: <Y8j1vOJ1nlsW9Bcg@hovoldconsulting.com>
References: <20230118193015.911074-1-markyacoub@google.com>
 <20230118193015.911074-9-markyacoub@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230118193015.911074-9-markyacoub@google.com>
Subject: Re: [Intel-gfx] [PATCH v6 08/10] dt-bindings: msm/dp: Add bindings
 for HDCP registers
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
Cc: quic_sbillaka@quicinc.com, konrad.dybcio@somainline.org,
 dri-devel@lists.freedesktop.org, dianders@chromium.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, hbh25y@gmail.com,
 marex@denx.de, abhinavk@codeaurora.org, javierm@redhat.com,
 quic_khsieh@quicinc.com, agross@kernel.org,
 Mark Yacoub <markyacoub@chromiu.org>, quic_jesszhan@quicinc.com,
 devicetree@vger.kernel.org, tzimmermann@suse.de, Rob Herring <robh@kernel.org>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com, quic_abhinavk@quicinc.com, swboyd@chromium.org,
 robh+dt@kernel.org, christophe.jaillet@wanadoo.fr, rodrigo.vivi@intel.com,
 bjorn.andersson@linaro.org, johan+linaro@kernel.org, andersson@kernel.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, dmitry.baryshkov@linaro.org,
 seanpaul@chromium.org, freedreno@lists.freedesktop.org, maxime@cerno.tech
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 18, 2023 at 07:30:13PM +0000, Mark Yacoub wrote:
> From: Sean Paul <seanpaul@chromium.org>
> 
> This patch adds the bindings for the MSM DisplayPort HDCP registers
> which are required to write the HDCP key into the display controller as
> well as the registers to enable HDCP authentication/key
> exchange/encryption.
> 
> We'll use a new compatible string for this since the fields are optional.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Mark Yacoub <markyacoub@chromiu.org>

Just a drive-by comment: Your mail address is missing an 'm' here.

Perhaps check the rest of the series as well (checkpatch should catch
this).

Johan
