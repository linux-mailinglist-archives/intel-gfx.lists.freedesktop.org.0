Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A96036EE207
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 14:42:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BFDE10E72B;
	Tue, 25 Apr 2023 12:42:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com
 [IPv6:2607:f8b0:4864:20::131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 521D510E72B
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 12:42:40 +0000 (UTC)
Received: by mail-il1-x131.google.com with SMTP id
 e9e14a558f8ab-325f728402cso65775ab.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 05:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1682426559; x=1685018559;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=L0R1shJ74GFraG54ZrBarpqRCUuus8sKdN1oUXtaP84=;
 b=Txr1tOrk3lncYAjQ+XMeFFNMCc+1J+OALg7JKpiQBoGjaklUAoF7naIJRGimpawtAT
 sBwfNg3ShbonS7fAYTnDKd8acfn0g/kxsYXUTGtlCL1Qy6BR5MBLMh0HlczwgLCPU2UM
 hxqOojx9hcV2PtMT9EIJLQ0BoQlNx1RJRftyusZek6lsTVIinhBDP/0Zxi1jPHE5QdnY
 QoEQNPmaJTOFlqVpP3501bAnYvcxZ2DD1GTLGJP/h5vMhnexw+5uaUIRpWAf51qdrBCJ
 9aLV2IvA5Lwlnxp9mJM1IvB38YgGaO/bvvaTwj9D7rbiJpNsaOyKEFreNarahBZxQ7x9
 KjiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682426559; x=1685018559;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=L0R1shJ74GFraG54ZrBarpqRCUuus8sKdN1oUXtaP84=;
 b=cnxPWEDaCCqH6A2JVlleZ/irnzbTC0ue/q464w0HDykgB19Nwb5nmZW6gbF7D63QzB
 n6IHblcDLvNR1Pb15F1d5QJwgyc5Meo8LV2SSp7CXqvxwUlxtFhqvQvBdOseGJgnkhVw
 L84CFghCTj6mh6BsusoN6ZNRAW8mut0CaAfu7smSvVzYA9iqDloJkSp9JmToR/pyX/K3
 fPYUoM3f8t38U+uBKKKUGyw2B5AKAsomRAmTNMUnMRTcipwhVkeIaV+zxrvGUhp5nOtu
 AoDPpok9JXfVKiQpCPmyrKbeApF+kJkBLpVCnx+/cQtmtDkCvIwIHs1eysJ/ru1PtPcg
 J3+w==
X-Gm-Message-State: AC+VfDwu/XetK/tHvRLAx5YzGaAj9BueJxQJFrVFK1g12lEzxjeG78IU
 QgfkL01scV38YTggBl5DmSzTOvb49s5TGTJj3GDeqw==
X-Google-Smtp-Source: ACHHUZ4GKysEbVSQRjtwRSfZ4ZLt12ToKr+xCMJTS781tmsqaX3mnDD1C2HU71jSpdl2+drmKJQM6Rb/08AWXEtz4SE=
X-Received: by 2002:a05:6e02:1aaf:b0:313:93c8:e71f with SMTP id
 l15-20020a056e021aaf00b0031393c8e71fmr174325ilv.19.1682426558867; Tue, 25 Apr
 2023 05:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230224-track_gt-v8-0-4b6517e61be6@intel.com>
 <20230224-track_gt-v8-2-4b6517e61be6@intel.com>
In-Reply-To: <20230224-track_gt-v8-2-4b6517e61be6@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Tue, 25 Apr 2023 14:42:27 +0200
Message-ID: <CANn89i+yGztnfz-ZMwcpPTVrQ_bxvmKC5wrJ70WUZvwAAJqJzg@mail.gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v8 2/7] lib/ref_tracker: improve printing
 stats
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
Cc: netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 David Airlie <airlied@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 25, 2023 at 12:06=E2=80=AFAM Andrzej Hajda <andrzej.hajda@intel=
.com> wrote:
>
> In case the library is tracking busy subsystem, simply
> printing stack for every active reference will spam log
> with long, hard to read, redundant stack traces. To improve
> readabilty following changes have been made:
> - reports are printed per stack_handle - log is more compact,
> - added display name for ref_tracker_dir - it will differentiate
>   multiple subsystems,
> - stack trace is printed indented, in the same printk call,
> - info about dropped references is printed as well.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Reviewed-by: Eric Dumazet <edumazet@google.com>
